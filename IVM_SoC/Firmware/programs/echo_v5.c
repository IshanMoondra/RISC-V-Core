#include "spi_compute.h"
#include "spi_uart.h"
#include "soc_mmio.h"
#include "soc_syscalls.h"

#include <stdio.h>

extern "C" struct _reent *_impure_ptr;
extern "C" void (*__stdio_exit_handler)(void);

#define BUF_SIZE 				128
#define CMD_BUF_SIZE   	32
#define ARGS_BUF_SIZE  	96

using namespace std;
extern void uart_print_hex32(int result);

// Main Function
	int main()
	{
		uart_print("\n");
		if (_impure_ptr == NULL) {
			uart_print("_impure_ptr is NULL\n");
		} else {
			uart_print("_impure_ptr is valid\n");
			if (_impure_ptr->_stdout == NULL)
				uart_print("stdout is NULL\n");
			else
				uart_print("stdout is valid\n");
		}

		// std::cout << "This is using IOSTREAMs" << std::endl;
		volatile bool flag = true;
		// Setting up the line, command & argument buffers.
		// Setting up the line, command and argument sizes. 
    char buf[BUF_SIZE];
		char cmd[CMD_BUF_SIZE];
		char arg[ARGS_BUF_SIZE];
		int line_size = 80;
		int cmd_size	= 24;
		int arg_size	= 56;

		puts("Jai Gurudev! From the C Standard Library!\n");
		printf("Line size is: %d\n", line_size);
		
		uart_print("\nstdout address check: ");
		unsigned int imp = (unsigned int)_impure_ptr;
		uart_print_hex32(imp);
		asm volatile ("nop");

		FILE * volatile s = stdout;
		if (s == NULL)
    	uart_print("\nstdout is NULL");
		else
    	uart_print("\nstdout is not NULL");

		uart_print("\nAddress print of volatile STDOUT: ");
		unsigned int saddr = (unsigned int)s;
		uart_print_hex32(saddr);
		asm volatile ("nop");
		
		uart_print("\nreent size check: ");
		unsigned int sz = (unsigned int)sizeof(struct _reent);
		uart_print_hex32(sz);
		asm volatile ("nop");

		uart_print("\nAddress of Impure Pointer inside main(): ");
		unsigned int imp_addr = (unsigned int)&_impure_ptr;
		uart_print_hex32(imp_addr);
		asm volatile ("nop");

		printf("PRINTF WORKS: %d\n", 42);
		fwrite("FWRITE WORKS\n", 1, 13, stdout);
		puts("PUTS WORKS");

		unsigned int imp_val  = (unsigned int)_impure_ptr;       // what _impure_ptr points TO
		imp_addr = (unsigned int)&_impure_ptr;      						 // address of _impure_ptr itself
		
		uart_print("\nWhat is impure pointer pointing to: ");
		uart_print_hex32(imp_val);
		asm volatile ("nop");
		uart_print("\nWhat is address of impure_ptr itself: ");
		uart_print_hex32(imp_addr);
		asm volatile ("nop");

		uart_print("\nExit handler's value: "); 
		uart_print_hex32((unsigned int)__stdio_exit_handler);
		asm volatile ("nop");	

		unsigned int *reent_raw = (unsigned int*)_impure_ptr;
		uart_print("\nreent[52]: ");
		uart_print_hex32(reent_raw[52/4]);
		asm volatile ("nop");	

		size_t written = fwrite("FWRITE\n", 1, 7, stdout);
		asm volatile ("nop");
		uart_print("\nfwrite returned: ");
		uart_print_hex32(written);
		asm volatile ("nop");

		unsigned int s_addr = (unsigned int)s;
		unsigned int *s_raw = (unsigned int*)s_addr;

		uart_print("\nstdout flags: ");
		uart_print_hex32(s_raw[0]);  // __sflags is first field
		asm volatile ("nop");
		uart_print("\nstdout fd: ");
		uart_print_hex32(s_raw[1]);  // file descriptor
		asm volatile ("nop");

		unsigned int stdout_addr = (unsigned int)stdout;
		unsigned int *stdout_raw = (unsigned int*)stdout_addr;
		
		uart_print("\nThis is stdout values in raw Hex in Main.");

		uart_print("\nstdout raw[0]: "); 
		uart_print_hex32(stdout_raw[0]); 
		asm volatile ("nop");
		
		uart_print("\nstdout raw[1]: "); 
		uart_print_hex32(stdout_raw[1]); 
		asm volatile ("nop");

		uart_print("\nstdout raw[2]: ");
		uart_print_hex32(stdout_raw[2]);
		asm volatile ("nop");
		
		uart_print("\nstdout raw[3]: ");
		uart_print_hex32(stdout_raw[3]);
		asm volatile ("nop");

		// Also read what's at __sf + 0x5c which global_stdio_init used
		uart_print("\nsf+0x5c raw[0]: "); 
		uart_print_hex32(((unsigned int*)0x3485c)[0]);
		asm volatile ("nop");

		uart_print("\nsf+0x5c raw[1]: "); 
		uart_print_hex32(((unsigned int*)0x3485c)[1]);
		asm volatile ("nop");

		uart_print("\nsf+0x5c raw[2]: "); 
		uart_print_hex32(((unsigned int*)0x3485c)[2]);
		asm volatile ("nop");

		uart_print("\nsf+0xc4 raw[0] flags: "); 
		uart_print_hex32(((unsigned int*)0x348c4)[0]); 
		asm volatile ("nop");

		uart_print("\nsf+0xc4 raw[1] fd: "); 
		uart_print_hex32(((unsigned int*)0x348c4)[1]); 
		asm volatile ("nop");

		uart_print("\nstdout ptr: ");
		uart_print_hex32((unsigned int)stdout);
		asm volatile ("nop");

		uart_print("\n0x34874: ");
		uart_print_hex32(((unsigned int*)0x34874)[0]);
		asm volatile ("nop");

		uart_print("\n0x34878: ");
		uart_print_hex32(((unsigned int*)0x34878)[0]);
		asm volatile ("nop");

		// Manually fix stdout pointer to correct FILE struct
		FILE *real_stdout = (FILE*)0x34874;
		uart_print("\nreal stdout flags: ");
		uart_print_hex32(((unsigned int*)real_stdout)[0]);
		asm volatile ("nop");
		uart_print("\n");

		// Try fwrite directly to real stdout
		size_t w = fwrite("DIRECT\n", 1, 7, real_stdout);
		uart_print("\nfwrite to real stdout returned: ");
		uart_print_hex32(w);
		asm volatile ("nop");

		flag = false;
		
		// // The Main Shell loop
		// while (flag)
		// 	{
		// 		uart_getline(buf, line_size);
		// 		cmd_arg_tokenizer(buf, cmd, arg, cmd_size, arg_size);
		// 		process_command(cmd, arg, &flag);
		// 		uart_print("\n>: ");
		// 	}
		
		return flag;
	}
