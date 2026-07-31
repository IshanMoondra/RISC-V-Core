#include "spi_compute.h"
#include "spi_uart.h"
#include "soc_mmio.h"

#define BUF_SIZE 				128
#define CMD_BUF_SIZE   	32
#define ARGS_BUF_SIZE  	96

using namespace std;

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

		// // Matrix Multiplier Test
		// cmd_matrix_multiplier();
		// uart_print("\n>: Number of L1 I$ misses: ");
		// uart_print_int32(*(volatile int*)&GET_PERFMON_MISS);
		// asm volatile ("nop");
		// flag = false;
		// *(volatile int*)&SET_I_LOCK = 3;
		// uart_print("\n>: Now, locking everything, so that we are effectively into a Direct Mapped Cache: \n>: ");
		// cmd_matrix_multiplier();

		// The Main Shell loop
		while (flag)
			{
				uart_getline(buf, line_size);
				cmd_arg_tokenizer(buf, cmd, arg, cmd_size, arg_size);
				process_command(cmd, arg, &flag);
				uart_print("\n>: ");
			}
		
		return flag;
	}
