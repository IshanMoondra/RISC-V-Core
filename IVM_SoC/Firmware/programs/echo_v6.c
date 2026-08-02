#include "spi_compute.h"
#include "spi_uart.h"
#include "soc_mmio.h"
#include "soc_syscalls.h"

#include <stdio.h>
#include <stdlib.h>

// #ifdef __cplusplus
// extern "C" 
// 	{
// #endif
// 		struct _reent *_impure_ptr;
// 		void (*__stdio_exit_handler)(void);
// 		extern char* __curr_heap_end_ptr;
// #ifdef __cplusplus
// 	}
// #endif

#define BUF_SIZE 				128
#define CMD_BUF_SIZE   	32
#define ARGS_BUF_SIZE  	96

// Main Function
	int main()
	{
		volatile bool flag = true;
		// Setting up the line, command & argument buffers.
		// Setting up the line, command and argument sizes. 
    char buf[BUF_SIZE];
		char cmd[CMD_BUF_SIZE];
		char arg[ARGS_BUF_SIZE];
		int line_size = 80;
		int cmd_size	= 24;
		int arg_size	= 56;
		
		_write(1, "Hola!\n", 6);

		// puts(">: Jai Gurudev! From the C Standard Library!");
		
		uart_print("\n>: Local PRINTF Test: \n");
		printf("Line size is: %d\n", line_size);

		
		uart_print("\nLocal FWRITE test\n");
		fwrite("TEST\n", 1, 5, stdout);
		
		uart_print("\nLocal PUTS test\n");
		puts("PUTS TEST");

		// uart_print("\nSTDOUT Pointer: ");
		// uart_print_hex32((unsigned int)stdout);
		// asm volatile ("nop");
		
		// // FILE struct layout - write function pointer is at offset 0x20 (32 bytes)
		// unsigned int *fp = (unsigned int*)stdout;
		// uart_print("\nChecking STDOUT's __SFILE64 elements now.");
		// uart_print("\nfp[0]  flags:     "); uart_print_hex32(fp[0]);  asm volatile ("nop");
		// uart_print("\nfp[1]  _r:        "); uart_print_hex32(fp[1]);  asm volatile ("nop");
		// uart_print("\nfp[2]  _w:        "); uart_print_hex32(fp[2]);  asm volatile ("nop");
		// uart_print("\nfp[3]  _flags/_fd:"); uart_print_hex32(fp[3]);  asm volatile ("nop");
		// uart_print("\nfp[4]:            "); uart_print_hex32(fp[4]);  asm volatile ("nop");
		// uart_print("\nfp[5]:            "); uart_print_hex32(fp[5]);  asm volatile ("nop");
		// uart_print("\nfp[6]:            "); uart_print_hex32(fp[6]);  asm volatile ("nop");
		// uart_print("\nfp[7]:            "); uart_print_hex32(fp[7]);  asm volatile ("nop");
		// uart_print("\nfp[8]:            "); uart_print_hex32(fp[8]);  asm volatile ("nop");
		// uart_print("\nfp[9]: _read      "); uart_print_hex32(fp[9]);  asm volatile ("nop");
		// uart_print("\nfp[10]: _write    "); uart_print_hex32(fp[10]);  asm volatile ("nop");

		// uart_print("\nCalling _write_r now: ");
		// int ret = _write_r(_impure_ptr, 1, "DIRECT\n", 7);
		// asm volatile ("nop");
		// uart_print("\n _write_r returned: ");
		// uart_print_hex32(ret);
		// asm volatile ("nop");

		// uart_print("\n Here the shell starts: \n>:");
		// flag = true;

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
