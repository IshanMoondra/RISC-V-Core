#include "spi_compute.h"
#include "spi_uart.h"
#include "soc_mmio.h"
#include "soc_syscalls.h"

#include <stdio.h>
#include <sys/reent.h>

using namespace std;
extern "C" 
	{
		// Declare the FILE pool that global_stdio_init populated
		extern struct __sFILE __sf[];
		extern struct _reent _impure_data;
		extern struct _reent *_impure_ptr;
		extern void __sinit(struct _reent *);
		extern void (*__stdio_exit_handler)(void);
		extern void stdio_exit_stub(void) { }
	}

extern "C" int main();
// extern "C" void _start() __attribute__((section(".bare_start")));
void _start()
	{
		// Enable the I-cache please. 
		// *(volatile int*)&SET_DIS_I_CACHE = 0;
		
		asm volatile 
		(
			"nop\n"
			"la sp, _stack_end\n"       // Set stack pointer
			"la gp, _global_pointer\n"  // Set global pointer (safe default)
			"nop\n"
		);

		// Zero .bss
    // for (int* p = &__bss_start; p < &__bss_end; ++p)
		for (int* p = &__bss_start; p < (int*)&_stack_end; ++p)
			{ *p = 0; }

		// Zero .sbss - this is where stdio_exit_handler lives
		for (int *p = &__sbss_start; p < &__sbss_end; ++p)
    	{ *p = 0; }
		
		_impure_ptr = &_impure_data;
		((unsigned int*)_impure_ptr)[52/4] = 0;  // force __sinit to run fully
    __sinit(_impure_ptr);
		asm volatile ("nop");
		uart_print("\nsf[3] after sinit: ");
		uart_print_hex32(((unsigned int*)0x34800)[3]);
		asm volatile ("nop");
		
		uart_print("\n Now patching STDOUT/STDIN/STDERR to the right FILE.\n");
		// Patch _stdout/_stdin/_stderr to point to correct FILE structs
    // global_stdio_init populated __sf[] but _impure_data->_stdout is 8 bytes off
    _impure_ptr->_stdin  = (FILE*)&__sf[0];
    _impure_ptr->_stdout = (FILE*)&__sf[1];
    _impure_ptr->_stderr = (FILE*)&__sf[2];

		// Run global/static constructors
    __libc_init_array();
		asm volatile ("nop");
		uart_print("\nsf[3] after libc_init: ");
		uart_print_hex32(((unsigned int*)0x34800)[3]);
		asm volatile ("nop");

		soc_bootup(0, (1 << 20), 50);
		uart_print("\nsf[3] after SOC bootup: ");
		uart_print_hex32(((unsigned int*)0x34800)[3]);
		asm volatile ("nop");

		int main_return = main();
		uart_print("\nsf[3] after main: ");
		uart_print_hex32(((unsigned int*)0x34800)[3]);
		asm volatile ("nop");

		// Scan _impure_data for the pointer 0x34868
		unsigned int *r = (unsigned int*)_impure_ptr;
		uart_print("\nScanning reent for stdout ptr:\n");
		for (int i = 0; i < 0x120/4; i++) 
			{
				if (r[i] == 0x34868) 
					{
						uart_print("\nFound at offset: ");
						uart_print_hex32(i * 4);
						asm volatile ("nop");
					}
			}
		
		// The in built EXIT call. 
		_exit(main_return);

	}