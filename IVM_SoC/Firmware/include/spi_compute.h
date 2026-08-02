#ifndef spi_compute
#define spi_compute

#include <stdbool.h>

// // Sub Program / Utility Functions for the Shell.
// void cmd_echo(char *arg)													 	__attribute__((weak, section(".spi_compute")));
// void cmd_help(char *arg)													 	__attribute__((weak, section(".spi_compute")));
// void cmd_exit(char *arg, volatile bool *running)		__attribute__((weak, section(".spi_compute")));

// // Memory Management Functions:
// void 												cmd_free	(void)				__attribute__((weak, section(".spi_compute")));

// // The Main Compute Function/Orchestrator
// void compute ()  																		__attribute__((weak, section(".spi_compute")));

// // Matrix Multiplier Function Definition.
// bool matmul									(const Mat3 A, Mat3 B, Mat3 C) 	__attribute__((section(".spi_compute")));
// void cmd_matrix_multiplier 	()															__attribute__((section(".spi_compute")));

// // Independent Computing Functions
// int fibonacci_iterative (int count)  								__attribute__((weak, section(".spi_compute")));
// int fibonacci_recursive (int count)  								__attribute__((weak, section(".spi_compute")));

// Sub Program / Utility Functions for the Shell.
void cmd_echo(char *arg)													 	;
void cmd_help(char *arg)													 	;
void cmd_exit(char *arg, volatile bool *running)		;

// Memory Management Functions:
void 												cmd_free	(void)				;

// The Main Compute Function/Orchestrator
void compute ()  																		;

#ifdef __cplusplus
// Matrix Multiplier Function Definition.
bool matmul									(const Mat3 A, Mat3 B, Mat3 C) 	;
void cmd_matrix_multiplier 	()															;
#endif

// Independent Computing Functions
int fibonacci_iterative (int count)  								;
int fibonacci_recursive (int count)  								;

#endif // spi_compute
