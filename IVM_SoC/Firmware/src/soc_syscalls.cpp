#include "spi_compute.h"
#include "spi_uart.h"
#include "soc_mmio.h"
#include "soc_syscalls.h"

#include <sys/types.h>
#include <sys/stat.h>
#include <errno.h>
#include <reent.h>

extern "C" {

// -----------------------------------------------------------------------------
// Heap allocation (required for malloc/new/iostream)
// -----------------------------------------------------------------------------
char* __curr_heap_end_ptr = &_heap_start;

void* _sbrk(ptrdiff_t incr)
	{
    char *prev = __curr_heap_end_ptr;
    unsigned int sp = get_sp();
		
		uart_print("\nRequested Increment: ");
		uart_print_hex32((unsigned int)incr);
		asm volatile ("nop");

		uart_print("\nCurrent Heap in SBRK: ");
		uart_print_hex32((unsigned int)*prev);
		asm volatile ("nop");

		uart_print("\nSBRK: &__curr_heap_end_ptr = ");
		uart_print_hex32((unsigned int)&__curr_heap_end_ptr);
		asm volatile ("nop");

		uart_print("\nCurrent Stack Pointer: ");
		uart_print_hex32(sp);
		asm volatile ("nop");

    if ((unsigned int)(*prev + incr) >= sp)
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
		uart_print("_WRITE CALLED\n"); // raw, bypasses everything
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

} // extern "C"
