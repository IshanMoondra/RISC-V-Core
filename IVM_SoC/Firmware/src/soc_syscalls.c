#include "spi_compute.h"
#include "spi_uart.h"
#include "soc_mmio.h"
#include "soc_syscalls.h"

#include <stdarg.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <errno.h>
#include <reent.h>

#ifdef __cplusplus
extern "C" 
{
#endif

// -----------------------------------------------------------------------------
// SOC Boot Up Function
// -----------------------------------------------------------------------------
void soc_bootup(int panic_high, int panic_low, int baud)
	{
		// Setting up the SOC on Boot
		// Panic Watchdog Timer
		*(volatile int*)&SET_WATCHDOG_HIGH = panic_high;
		*(volatile int*)&SET_WATCHDOG_LOW	 = panic_low;
		// UART Baud Rate
		*(volatile int*)&UART_BAUD = baud;
		// Prompt on UART
		uart_print("\nREADY. \t");
		cmd_free();
		uart_print("\nWatchdog Timer set to: ");
		long long panic_read = ((*(volatile int*)&GET_WATCHDOG_HIGH << 32) | *(volatile int*)&GET_WATCHDOG_LOW);
		uart_print_int64(panic_read);
		asm volatile ("nop");
		uart_print("\t Clock Cycles.");
		uart_print("\n>: ");
		// Boot up complete
	}

// -----------------------------------------------------------------------------
// Heap allocation (required for malloc/new/iostream)
// -----------------------------------------------------------------------------
extern char* __curr_heap_end_ptr = &_heap_start;

void* _sbrk(ptrdiff_t incr)
	{
    extern char* 	__curr_heap_end_ptr;
		extern char 	_heap_start;
		
		char *prev = __curr_heap_end_ptr;
    unsigned int sp = get_sp();
		
    if ((unsigned int)(get_curr_heap() + incr) >= get_sp())
			{
				uart_print("\nOUT OF MEMORY\n");
				errno = ENOMEM;
				return (void*)-1;
			}

    __curr_heap_end_ptr += incr; // char* arithmetic = byte granularity, correct
    return (void*)prev;
	}

// -----------------------------------------------------------------------------
// Write to stdout/stderr (iostreams, printf, cout)
// -----------------------------------------------------------------------------

int _write(int file, const char* ptr, int len) 
	{
		for (int i = 0; i < len; i++)
			{
				uart_putc(ptr[i]);
				asm volatile ("nop");
			} 
		return len;
	}

// -----------------------------------------------------------------------------
// Read from stdin (cin, scanf)
// -----------------------------------------------------------------------------

int _read(int file, char* ptr, int len) 
	{
		for (int i = 0; i < len; i++)
			{
				ptr[i] = uart_getc(true);   // blocking read
				asm volatile ("nop");
			}
		return len;
	}

// -----------------------------------------------------------------------------
// Required stubs (no filesystem, no processes)
// -----------------------------------------------------------------------------

int _close(int file) 
	{
    return -1;
	}

int _fstat(int file, struct stat* st) 
	{
    st->st_mode = S_IFCHR;
    return 0;
	}

int _isatty(int file) 
	{
    return 1;
	}

int _lseek(int file, int ptr, int dir) 
	{
    return 0;
	}

int _open(const char* name, int flags, int mode) 
	{
    return -1;
	}

int _kill(int pid, int sig) 
	{
    errno = EINVAL;
    return -1;
	}

int _getpid(void) 
	{
    return 1;
	}

// void __libc_init_array(void)
// 	{
//     extern void (*__init_array_start[])(void);
//     extern void (*__init_array_end[])(void);

//     for (void (**p)(void) = __init_array_start; p != __init_array_end; ++p)
// 			(*p)();
// 	}

// void __libc_init_array(void)
// {
// 	extern void (*__preinit_array_start[])(void);
// 	extern void (*__preinit_array_end[])(void);
// 	extern void (*__init_array_start[])(void);
// 	extern void (*__init_array_end[])(void);

// 	// Run pre-init array first - this is where newlib stdio init lives
// 	for (void (**p)(void) = __preinit_array_start; p != __preinit_array_end; ++p)
// 		(*p)();

// 	// Then run init array
// 	for (void (**p)(void) = __init_array_start; p != __init_array_end; ++p)
// 		(*p)();
// }

void __libc_fini_array(void)
	{
    extern void (*__fini_array_start[])(void);
    extern void (*__fini_array_end[])(void);

    for (void (**p)(void) = __fini_array_end; p != __fini_array_start; )
    {
			--p;
			(*p)();
    }
	}

	// Some destructor function thingy. 
	void *__dso_handle = 0;

void _exit(int status)
	{
		
		// Run the Destructors. 
		__libc_fini_array();
		// Optional: print exit code
		uart_print("\n>: EXIT called with Status: ");
		uart_print_int32(status);
		asm volatile ("nop");
		uart_putc('\n');
		asm volatile ("nop");

		// Printing the number of L1 I$ misses.
		uart_print("\n>: Number of L1 I$ misses: ");
		uart_print_int32(*(volatile int*)&GET_PERFMON_MISS);
		asm volatile ("nop");
    
		// Power off. 
		uart_print("\n>: POWEROFF.\n");

		// Execute your custom HALT instruction
		__asm__ volatile (".word 0xFFFFFFFF");
	}

	int puts(const char *s) 
		{
			uart_print(s);
			uart_putc('\n');
			asm volatile ("nop");
			return 1;
		}	

	// size_t fwrite(const void *ptr, size_t size, size_t nmemb, FILE *stream) 
	// 	{
	// 		size_t total = size * nmemb;
	// 		_write_r(_impure_ptr, 1, ptr, total);
	// 		return nmemb;
	// 	}

	int printf(const char *fmt, ...) 
		{
			char buf[256];
			va_list args;
			va_start(args, fmt);
			int len = vsiprintf(buf, fmt, args);
			va_end(args);
			uart_print(buf);
			return len;
		}

#ifdef __cplusplus
}
#endif
