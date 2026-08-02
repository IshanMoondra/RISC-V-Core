#include "spi_compute.h"
#include "spi_uart.h"
#include "soc_mmio.h"
#include "soc_syscalls.h"

#include <stdio.h>
#include <stdlib.h>

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

		char echo[80];
		printf("Local printf used.\n");
		printf("Line size is: %d\n", line_size);
		// printf("Basic Echo test: Type something below and hit enter/return. \n");
		// // fgets fails.
		// fgets(echo, sizeof(echo), stdin);
		// asm volatile ("nop");
		// printf("%s \n", echo);

		// Let us start figuring out the next link. 
		// We know that _write & _write_r both work.

		uart_print("calling __swrite directly\n");
		int n = __swrite(_impure_ptr, stdout, "SWRITE\n", 7);
		uart_print("__swrite returned: ");
		uart_print_hex32((unsigned int)n);
		asm volatile ("nop");

		uart_print("\nCalling fwrite directly\n");
		size_t n1 = fwrite("FWRITE\n", 1, 7, stdout);
		uart_print("fwrite returned: ");
		uart_print_hex32((unsigned int)n1);
		asm volatile ("nop");

		unsigned int *fp = (unsigned int*)stdout;
		uart_print("\n_r    (fp[1]): "); 		uart_print_hex32(fp[1]); asm volatile ("nop");
		uart_print("\n_p    (fp[0]): "); 		uart_print_hex32(fp[0]); asm volatile ("nop");
		uart_print("\n_w    (fp[2]): "); 		uart_print_hex32(fp[2]); asm volatile ("nop");
		uart_print("\n_flags(fp[3]): "); 		uart_print_hex32(fp[3]); asm volatile ("nop");
		uart_print("\n_bf._base(fp[4]): "); uart_print_hex32(fp[4]); asm volatile ("nop");
		uart_print("\n_bf._size(fp[5]): "); uart_print_hex32(fp[5]); asm volatile ("nop");
		uart_print("\n_lbfsize(fp[6]): "); 	uart_print_hex32(fp[6]); asm volatile ("nop");
		uart_print("\n_data   (fp[7]): "); 	uart_print_hex32(fp[7]); asm volatile ("nop");
		uart_print("\n_cookie (fp[8]): "); 	uart_print_hex32(fp[8]); asm volatile ("nop");

		uart_print("\nreent[52]: ");
		uart_print_hex32(((unsigned int*)_impure_ptr)[13]);
		asm volatile ("nop");
		uart_print("\nreent[33]: ");
		uart_print_hex32(((unsigned int*)_impure_ptr)[33]);
		asm volatile ("nop");

		fp[4] = 0;  // _bf._base = NULL
		fp[5] = 0;  // _bf._size = 0
		fp[2] = 0;  // _w = 0

		uart_print("\nCalling fwrite after the changes to the FP\n");
		n1 = fwrite("FWRITE\n", 1, 7, stdout);
		uart_print("fwrite returned: ");
		uart_print_hex32((unsigned int)n1);
		asm volatile ("nop");

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
