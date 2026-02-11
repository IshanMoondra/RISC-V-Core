#include "svdpi.h"
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pty.h>
#include <fcntl.h>
#include <string.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/select.h>
#include <sys/stat.h>

static int   pty_master_fd = -1;
static char  pty_path[128];
static pid_t terminal_pid  = -1;

/* ---------- Helpers for paths ---------- */

static void get_pty_file_path(char *out, size_t out_sz) {
    const char *home = getenv("HOME");
    if (!home) home = "/tmp";
    snprintf(out, out_sz, "%s/.prev_pty_soc", home);
}

static void get_bridge_paths(char *c_path, size_t c_sz,
                             char *bin_path, size_t b_sz) {
    const char *home = getenv("HOME");
    if (!home) home = "/tmp";
    snprintf(c_path,  c_sz, "%s/.pty_bridge_launcher.c", home);
    snprintf(bin_path, b_sz, "%s/.pty_bridge_launcher",   home);
}

/* ---------- PTY create / reuse ---------- */

static void load_or_create_pty() {
    char pty_file[512];
    get_pty_file_path(pty_file, sizeof(pty_file));

    FILE *f = fopen(pty_file, "r");
    if (f) {
        if (fgets(pty_path, sizeof(pty_path), f)) {
            pty_path[strcspn(pty_path, "\n")] = 0;
            int fd = open(pty_path, O_RDWR | O_NOCTTY);
            if (fd >= 0) {
                pty_master_fd = fd;
                fclose(f);
                printf("[DPI] Reusing PTY: %s\n", pty_path);
                return;
            }
        }
        fclose(f);
    }

    int slave_fd;
    if (openpty(&pty_master_fd, &slave_fd, pty_path, NULL, NULL) == -1) {
        perror("[DPI] openpty failed");
        pty_master_fd = -1;
        return;
    }
    close(slave_fd);

    FILE *out = fopen(pty_file, "w");
    if (out) {
        fprintf(out, "%s\n", pty_path);
        fclose(out);
    }

    printf("[DPI] Created new PTY: %s\n", pty_path);
}

/* ---------- Runtime launcher generator in $HOME ---------- */
/* Standalone bridge program: stdin/stdout <-> PTY slave    */

static void ensure_bridge_launcher_built() {
    char c_path[512], bin_path[512];
    get_bridge_paths(c_path, sizeof(c_path), bin_path, sizeof(bin_path));

    if (access(bin_path, X_OK) == 0)
        return;

    printf("[DPI] Building bridge launcher at %s\n", bin_path);

    FILE *f = fopen(c_path, "w");
    if (!f) {
        perror("[DPI] fopen launcher.c");
        return;
    }

    /* Write launcher source line by line to avoid string-escaping hell */
    fputs("#include <stdio.h>\n", f);
    fputs("#include <unistd.h>\n", f);
    fputs("#include <fcntl.h>\n", f);
    fputs("#include <sys/select.h>\n", f);
    fputs("#include <stdlib.h>\n", f);
    fputs("int main(int argc, char **argv) {\n", f);
    fputs("    if (argc != 2) {\n", f);
    fputs("        fprintf(stderr, \"Usage: %s /dev/pts/X\\n\", argv[0]);\n", f);
    fputs("        return 1;\n", f);
    fputs("    }\n", f);
    fputs("    const char *path = argv[1];\n", f);
    fputs("    int fd = open(path, O_RDWR | O_NOCTTY);\n", f);
    fputs("    if (fd < 0) {\n", f);
    fputs("        perror(\"[BRIDGE] open pty\");\n", f);
    fputs("        return 1;\n", f);
    fputs("    }\n", f);
    fputs("    while (1) {\n", f);
    fputs("        fd_set set;\n", f);
    fputs("        FD_ZERO(&set);\n", f);
    fputs("        FD_SET(fd, &set);\n", f);
    fputs("        FD_SET(STDIN_FILENO, &set);\n", f);
    fputs("        int maxfd = (fd > STDIN_FILENO ? fd : STDIN_FILENO) + 1;\n", f);
    fputs("        int r = select(maxfd, &set, NULL, NULL, NULL);\n", f);
    fputs("        if (r < 0) break;\n", f);
    fputs("        char buf[256];\n", f);
    fputs("        if (FD_ISSET(fd, &set)) {\n", f);
    fputs("            int n = read(fd, buf, sizeof(buf));\n", f);
    fputs("            if (n <= 0) break;\n", f);
    fputs("            if (write(STDOUT_FILENO, buf, n) < 0) break;\n", f);
    fputs("        }\n", f);
    fputs("        if (FD_ISSET(STDIN_FILENO, &set)) {\n", f);
    fputs("            int n = read(STDIN_FILENO, buf, sizeof(buf));\n", f);
    fputs("            if (n <= 0) break;\n", f);
    fputs("            if (write(fd, buf, n) < 0) break;\n", f);
    fputs("        }\n", f);
    fputs("    }\n", f);
    fputs("    close(fd);\n", f);
    fputs("    return 0;\n", f);
    fputs("}\n", f);

    fclose(f);

    char cmd[1024];
    snprintf(cmd, sizeof(cmd),
             "gcc -O2 -fPIC -o '%s' '%s'",
             bin_path, c_path);

    printf("[DPI] Compiling launcher with: %s\n", cmd);
    int ret = system(cmd);
    printf("[DPI] GCC returned: %d\n", ret);

    if (ret != 0) {
        fprintf(stderr, "[DPI] Failed to build launcher\n");
        return;
    }

    if (chmod(bin_path, 0755) != 0) {
        perror("[DPI] chmod launcher");
    }

    if (access(bin_path, X_OK) != 0) {
        perror("[DPI] Launcher binary missing or not executable after compile");
    } else {
        printf("[DPI] Bridge launcher ready: %s\n", bin_path);
    }
}

/* ---------- xterm spawner using the launcher ---------- */

static void spawn_terminal_if_needed() {
    if (terminal_pid > 0) {
        int status;
        if (waitpid(terminal_pid, &status, WNOHANG) == 0)
            return;
        terminal_pid = -1;
    }

    ensure_bridge_launcher_built();

    char bin_path[512], c_path_dummy[512];
    get_bridge_paths(c_path_dummy, sizeof(c_path_dummy),
                     bin_path, sizeof(bin_path));

    if (access(bin_path, X_OK) != 0) {
        fprintf(stderr, "[DPI] Cannot spawn xterm: launcher missing\n");
        return;
    }

    printf("[DPI] Spawning xterm with launcher: %s\n", bin_path);

    pid_t pid = fork();
    if (pid == 0) {
        execl("/usr/bin/xterm", "xterm",
              "-fa", "Monospace",
              "-fs", "12",
              "-e", bin_path, pty_path,
              NULL);
        perror("[DPI] execl xterm");
        exit(1);
    }

    terminal_pid = pid;
    printf("[DPI] Spawned xterm (pid=%d) on PTY %s\n", terminal_pid, pty_path);
    usleep(300000);
}

/* ---------- DPI entry ---------- */

void dpi_hello_world_v2() {
    if (pty_master_fd < 0)
        load_or_create_pty();
    if (pty_master_fd < 0) {
        fprintf(stderr, "[DPI] No PTY available.\n");
        return;
    }

    spawn_terminal_if_needed();

    const char *msg = "Hello from DPI-C!\n";
    ssize_t w = write(pty_master_fd, msg, strlen(msg));
    if (w < 0) {
        perror("[DPI] write pty_master_fd");
    } else {
        printf("[DPI] Wrote %zd bytes to PTY master\n", w);
    }
}
