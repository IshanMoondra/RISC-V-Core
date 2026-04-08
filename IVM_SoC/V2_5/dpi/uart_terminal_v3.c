#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <sys/select.h>
#include "svdpi.h"

#include <termios.h>
#include <stdlib.h>

// -----------------------------------------------------------------------------
// Raw terminal mode
// -----------------------------------------------------------------------------
static struct termios g_orig_termios;

static void restore_terminal(void) {
    tcsetattr(STDIN_FILENO, TCSANOW, &g_orig_termios);
}

static void set_raw_mode(void) {
    if (!isatty(STDIN_FILENO)) return; // skip if piped input

    tcgetattr(STDIN_FILENO, &g_orig_termios);
    atexit(restore_terminal); // always clean up on exit

    struct termios raw = g_orig_termios;

    // Disable canonical mode and echo
    raw.c_lflag &= ~(ICANON | ECHO | ECHOE | ECHOK | ECHONL | ISIG);

    // Disable CR→NL translation on input
    raw.c_iflag &= ~(ICRNL | INLCR);

    // Read returns immediately with whatever is available
    raw.c_cc[VMIN]  = 0;
    raw.c_cc[VTIME] = 0;

    tcsetattr(STDIN_FILENO, TCSANOW, &raw);
}

// -----------------------------------------------------------------------------
// Hello World
// -----------------------------------------------------------------------------
void dpi_hello_world_v4() {
    printf("\nDPI-C UART Terminal Ready\n");
    fflush(stdout);
		set_raw_mode();
}

// -----------------------------------------------------------------------------
// UART Interface State
// -----------------------------------------------------------------------------
static int g_rx_rdy    = 0;
static int g_rx_buffer = 0;
static int g_tx_done   = 0;

static int g_clr_rx_rdy     = 0;
static int g_start_transmit = 0;
static int g_tx_buffer      = 0;

typedef enum { RX_IDLE, RX_WAIT_READ, RX_PULSE_CLR } rx_state_e;
typedef enum { TX_IDLE, TX_PULSE_START, TX_WAIT } tx_state_e;

static rx_state_e rx_state = RX_IDLE;
static tx_state_e tx_state = TX_IDLE;

// -----------------------------------------------------------------------------
// Input Line Buffer (stdin)
#define INPUT_BUF_SIZE 256

// TX queue (feeds UART one byte at a time)
static char tx_queue[INPUT_BUF_SIZE];
static int  tx_head = 0;
static int  tx_tail = 0;

static int current_tx_byte_valid = 0;

// -----------------------------------------------------------------------------
// RAW dump parser state
typedef enum {
    UART_MODE_ASCII,
    UART_MODE_WAIT_LEN,
    UART_MODE_RAW
} uart_mode_e;

static uart_mode_e uart_mode = UART_MODE_ASCII;
static int     raw_expected = 0;
static int     raw_count    = 0;
static uint8_t raw_bytes[8];
static char    pending_prefix = 0;

// -----------------------------------------------------------------------------
// // Non-blocking stdin polling

static void poll_stdin_for_uart(void)
{
    fd_set rfds;
    struct timeval tv = {0, 0};

    FD_ZERO(&rfds);
    FD_SET(STDIN_FILENO, &rfds);

    int ret = select(STDIN_FILENO + 1, &rfds, NULL, NULL, &tv);

    if (ret > 0 && FD_ISSET(STDIN_FILENO, &rfds)) {
        int c = getchar();
        if (c == EOF) return;

        // Translate Enter key (\r) → \n for the SOC
        if (c == '\r') c = '\n';

        if (tx_tail < INPUT_BUF_SIZE)
            tx_queue[tx_tail++] = (char)c;
    }
}

// -----------------------------------------------------------------------------
// SV → C : Capture UART RX inputs
void dpi_uart_set_rx_inputs_v2(svBit rx_rdy, int rx_buffer, svBit tx_done)
{
    g_rx_rdy    = rx_rdy;
    g_rx_buffer = rx_buffer;
    g_tx_done   = tx_done;

    // Clear tx_busy when SoC reports done
    if (g_tx_done)
        current_tx_byte_valid = 0;
}

// -----------------------------------------------------------------------------
// C → SV : Main control + terminal behavior
void dpi_uart_get_ctrl_outputs_v2(
    svBit *clr_rx_rdy,
    int   *tx_buffer,
    svBit *start_transmit
) {
    g_clr_rx_rdy     = 0;
    g_start_transmit = 0;

    // ============================================================
    // RX PATH (SoC → Terminal)
    // ============================================================
    switch (rx_state) {

    case RX_IDLE:
        if (g_rx_rdy)
            rx_state = RX_WAIT_READ;
        break;

    case RX_WAIT_READ:
    {
        uint8_t b = (uint8_t)(g_rx_buffer & 0xFF);

        if (uart_mode == UART_MODE_ASCII) {
					// Normal ASCII output
					if (b == '\n') {
							putchar('\n');
					} else {
							putchar(b);
					}
					fflush(stdout);
        }
        else if (uart_mode == UART_MODE_WAIT_LEN) {
            raw_expected = b;
            raw_count    = 0;
            uart_mode    = UART_MODE_RAW;

            printf("\n[HEX:");
            fflush(stdout);
        }
        else if (uart_mode == UART_MODE_RAW) {
            raw_bytes[raw_count] = b;
            printf(" %02X", b);
            fflush(stdout);

            raw_count++;

            if (raw_count >= raw_expected) {
                printf(" ]");

                if (pending_prefix) {
                    uint32_t value = 0;
                    for (int i = 0; i < raw_expected; i++)
                        value |= ((uint32_t)raw_bytes[i] << (8 * i));

                    printf(" => %u", value);
                    pending_prefix = 0;
                }
                fflush(stdout);
                uart_mode = UART_MODE_ASCII;
            }
        }
    }
        rx_state = RX_PULSE_CLR;
        break;

    case RX_PULSE_CLR:
        g_clr_rx_rdy = 1;
        rx_state     = RX_IDLE;
        break;
    }

    // ============================================================
    // TX PATH (Terminal → SoC)
    // ============================================================

    poll_stdin_for_uart();

    // Only start next byte if previous finished
    int tx_queue_empty = (tx_head == tx_tail);

    switch (tx_state) {

    case TX_IDLE:
        if (!current_tx_byte_valid && !tx_queue_empty) {
            g_tx_buffer = tx_queue[tx_head]; // keep stable
            current_tx_byte_valid = 1;
            tx_state = TX_PULSE_START;
        }
        break;

    case TX_PULSE_START:
        g_start_transmit = 1; // 1-cycle pulse
        tx_state = TX_WAIT;
        break;
		
		case TX_WAIT:
				g_start_transmit = 0;
				if (g_tx_done)
					{
						tx_state = TX_IDLE;
						if (current_tx_byte_valid)
						{
							tx_head++;
							current_tx_byte_valid = 0;
						}
					}
				else
					tx_state = TX_WAIT;
				break;
    }

    // Increment head ONLY after SoC confirms byte done
    if (g_tx_done && current_tx_byte_valid) {
        tx_head++;
        current_tx_byte_valid = 0;
    }

    // Drive outputs back to SV
    *clr_rx_rdy     = (svBit)g_clr_rx_rdy;
    *tx_buffer      = (int)g_tx_buffer;
    *start_transmit = (svBit)g_start_transmit;
}