#include "spi_compute.h"
#include "spi_uart.h"
#include "soc_mmio.h"
#include "soc_syscalls.h"

#include <stdio.h>
#include <sys/reent.h>

#ifdef __cplusplus
extern "C" 
	{
#endif
		// Declare the FILE pool that global_stdio_init populated
		extern struct __sFILE __sf[];
		extern struct _reent _impure_data;
		extern struct _reent *_impure_ptr;
		extern void __sinit(struct _reent *);
		extern void (*__stdio_exit_handler)(void);
		extern void stdio_exit_stub(void) { }
		
		extern int __sread(struct _reent *, void *, char *, int);
		extern int __swrite(struct _reent *, void *, const char *, int);
		extern _fpos_t __sseek(struct _reent *, void *, _fpos_t, int);
		extern int __sclose(struct _reent *, void *);

		int main();

#ifdef __cplusplus
	}
#endif
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
    for (int* p = &__bss_start; p < &__bss_end; ++p)
		// for (int* p = &__bss_start; p < (int*)&_stack_end; ++p)
			{ 
				*p = 0;
				asm volatile ("nop");
			}

		// Zero .sbss - this is where stdio_exit_handler lives
		for (int* p = &__sbss_start; p < &__sbss_end; ++p)
    	{ 
				*p = 0;
				asm volatile ("nop");
			}
		

		// Force reent[52] to zero
		((unsigned int*)_impure_ptr)[13] = 0;

		uart_print("\nreent[52] before sinit: ");
		uart_print_hex32(((unsigned int*)_impure_ptr)[13]);
		asm volatile ("nop");

		__sinit(_impure_ptr);

		uart_print("\nreent[52] after sinit: ");
		uart_print_hex32(((unsigned int*)_impure_ptr)[13]);
		asm volatile ("nop");

		uart_print("\nreent[33] after sinit: ");
		uart_print_hex32(((unsigned int*)_impure_ptr)[33]);
		asm volatile ("nop");

		// _impure_ptr = &_impure_data;
		// __sinit(_impure_ptr);

		// _impure_ptr = &_impure_data;
		// Ensure reent[52] is zero so __sinit runs global_stdio_init
		// ((unsigned int*)_impure_ptr)[13] = 0;  // offset 52 = index 13
		// __sinit(_impure_ptr);
		// asm volatile ("nop");
		
		setvbuf(stdout, NULL, _IONBF, 0);  // unbuffered
		asm volatile ("nop");

		// After __sinit(impure_ptr) in _start:
		unsigned int *fp_in  = (unsigned int*)stdin;
		unsigned int *fp_out = (unsigned int*)stdout;
		unsigned int *fp_err = (unsigned int*)stderr;

		// Fix stdout - put __swrite in write slot (index 10), __sread in read slot (index 9)
		fp_out[9]  = (unsigned int)__sread;
		fp_out[10] = (unsigned int)__swrite;

		// Fix stdin similarly
		fp_in[9]   = (unsigned int)__sread;
		fp_in[10]  = (unsigned int)__swrite;

		// Fix stderr
		fp_err[9]  = (unsigned int)__sread;
		fp_err[10] = (unsigned int)__swrite;

		fp_out[8] = (unsigned int)stdout;   // _cookie = FILE* itself
		fp_in[8]  = (unsigned int)stdin;
		fp_err[8] = (unsigned int)stderr;
		
		fp_out[5] = 0;      // _bf._size = 0, truly unbuffered
		fp_out[4] = 0;      // _bf._base = NULL
		fp_out[2] = 32767;  // _w = large write space
		asm volatile ("nop");

		// uart_print("\nsf[3] after sinit: ");
		// uart_print_hex32(((unsigned int*)0x34800)[3]);
		// asm volatile ("nop");

		// Run global/static constructors
    // __libc_init_array();
		// asm volatile ("nop");
		// uart_print("\nsf[3] after libc_init: ");
		// uart_print_hex32(((unsigned int*)0x34800)[3]);

		soc_bootup(0, (1 << 20), 50);
		// uart_print("\nsf[3] after SOC bootup: ");
		// uart_print_hex32(((unsigned int*)0x34800)[3]);
		// asm volatile ("nop");

		int main_return = main();
		// uart_print("\nsf[3] after main: ");
		// uart_print_hex32(((unsigned int*)0x34800)[3]);
		// asm volatile ("nop");

		// The in built EXIT call.
		exit(main_return);
		// _exit(main_return);

	}