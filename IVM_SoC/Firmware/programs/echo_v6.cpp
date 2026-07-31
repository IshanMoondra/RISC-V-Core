#include "spi_compute.h"
#include "spi_uart.h"
#include "soc_mmio.h"
#include "soc_syscalls.h"

#include <stdio.h>
#include <cstdlib>

extern "C" struct _reent *_impure_ptr;
extern "C" void (*__stdio_exit_handler)(void);

#define BUF_SIZE 				128
#define CMD_BUF_SIZE   	32
#define ARGS_BUF_SIZE  	96

using namespace std;
extern void cmd_free();
void test_small_allocs();

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

		// puts("Jai Gurudev! From the C Standard Library!\n");
		// printf("Line size is: %d\n", line_size);
		test_small_allocs();
		
		flag = false;

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

// Testing Malloc & Free
	void test_small_allocs()
		{
			uart_print("\n>: Current Stack Pointer is at: ");
			uart_print_hex32(get_sp());
			asm volatile ("nop");

			uart_print("\n>: Current Heap End is at: ");
			uart_print_hex32(get_curr_heap());
			asm volatile ("nop");

			uart_print("\n>: Current Heap End Pointer is at: ");
			uart_print_hex32((unsigned int)__curr_heap_end_ptr);
			asm volatile ("nop");

			uart_print("\nMAIN: &__curr_heap_end_ptr = ");
			uart_print_hex32((unsigned int)&__curr_heap_end_ptr);
			asm volatile ("nop");

			uart_print("\n>: Testing 4 Byte level Mallocs");
			void *p1 = malloc(1);
			void *p2 = malloc(1);
			void *p3 = malloc(1);
			void *p4 = malloc(1);

			uart_print("\n>: Now checking their addresses: as returned by malloc.");
			
			uart_print("\n>: Malloc 1: ");
			uart_print_hex32((unsigned int)p1);
			asm volatile ("nop");

			uart_print("\n>: Malloc 2: ");
			uart_print_hex32((unsigned int)p2);
			asm volatile ("nop");

			uart_print("\n>: Malloc 3: ");
			uart_print_hex32((unsigned int)p3);
			asm volatile ("nop");

			uart_print("\n>: Malloc 4: ");
			uart_print_hex32((unsigned int)p4);
			asm volatile ("nop");

			uart_print("\n>: Calling free command now, should see a reduction in available memory: ");
			cmd_free();

			uart_print("\n>: Now, releasing all the Mallocs. free command should report new value. ");
			free(p1);
			free(p2);
			free(p3);
			free(p4);
			cmd_free();
		}
