#ifndef soc_syscalls
#define soc_syscalls

#include <sys/types.h>
#include <sys/stat.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" 
	{
#endif

		// Required POSIX stubs
		int     _close		(int file																);
		int     _fstat		(int file, struct stat* st							);
		int     _isatty		(int file																);
		int     _lseek		(int file, int ptr, int dir							);
		int     _open			(const char* name, int flags, int mode	);
		int     _read			(int file, char* ptr, int len						);
		int     _write		(int file, const char* ptr, int len			);
		void*   _sbrk			(ptrdiff_t incr													);
		int     _kill			(int pid, int sig												);
		int     _getpid		(void																		);
		void		_exit			(int status															);
		void 		__libc_init_array	(void														);
		void 		__libc_fini_array	(void														);

		// static int 	*heap_end = &_heap_start;
    // static char *heap_end = &_heap_start;

		// Linker symbol
		extern char _heap_start;

		// Inline variable (C++17) — ONE definition across the whole program
		// inline char* __curr_heap_end_ptr = &_heap_start;
		extern char* __curr_heap_end_ptr;

		// Inline accessor, just like get_sp()
		static inline unsigned int get_curr_heap(void)
			{
				return (unsigned int)__curr_heap_end_ptr;
			}

		// Read current stack pointer:
		static inline unsigned int get_sp(void) 
			{
				unsigned int sp;
				__asm__ volatile ("mv %0, sp" : "=r"(sp));
				return sp;
			}

#ifdef __cplusplus
	}
#endif

#endif	// soc_syscalls
