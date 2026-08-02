#include "spi_compute.h"
#include "spi_uart.h"
#include "soc_mmio.h"
#include "soc_syscalls.h"

#ifdef __cplusplus
// Instrumentation Template Thingy:
	// Trying out this Template thingy. 
	template<typename Func>
	auto instrument_cpi(Func&& func)
	{
		// Read counters before
		int start   = *(volatile int*)&GET_PERFMON_COREL;
		int before  = *(volatile int*)&GET_PERFMON_RET_CNT;

		// Execute the function under test
		auto result = func();

		// Read counters after
		int after   = *(volatile int*)&GET_PERFMON_RET_CNT;
		int end     = *(volatile int*)&GET_PERFMON_COREL;

		// Compute deltas
		int cycles  = end - start;
		int retired = after - before;

		// Output results
		uart_print(">: Core Cycles Consumed: ");
		uart_print_int32(cycles);
		asm volatile("nop");
		uart_print(" \n");

		uart_print(">: Useful Instructions Retired: ");
		uart_print_int32(retired);
		asm volatile("nop");
		uart_print(" \n");

		// Return whatever the function returned
		return result;
	}

#endif

// The basis of my free function.
	unsigned int get_free_bytes(void) 
		{
			unsigned int sp = get_sp();
			return (unsigned int)(sp - get_curr_heap());
		}

// Individual Commands/Utilities for the Shell
	// The actual Free function
	void cmd_free(void) 
		{
			unsigned int free = get_free_bytes();
			uart_print_int32(free);
			asm volatile ("nop");
			uart_print(" bytes free.");
		}	
// The Echo Command
	void cmd_echo(char *arg)
		{
			uart_print(arg);
			uart_print("\n");
		}
// The Help Command
	void cmd_help(char *arg)
		{
			uart_print("Following commands supported: \n");
			uart_print(">: echo \n");
			uart_print(">: free \n");
			uart_print(">: EXIT \n");
			uart_print(">: help \n"); 
			#ifdef __cplusplus
			uart_print(">: matrix \n"); 
			#endif
			uart_print(">: Type help to see this again. ");
		}
	// The EXIT Command
	void cmd_exit(char *arg, volatile bool *running)
		{
			uart_print("Exiting...\n");
			*running = false;
		}

#ifdef __cplusplus
// Matrix Multiplier Function, aka the test function.
	bool matmul		(const Mat3 A, Mat3 B, Mat3 C)
		{
			for (int i = 0; i < 3; i++)
			{
				for (int j = 0; j < 3; j++)
				{
					int sum = 0;
					for (int k = 0; k < 3; k++)
					{
						sum += A[i][k] * B[k][j];
					}
					C[i][j] = sum;
				}
			}
			return (bool)0;
		}

// Matrix Multiplier Command:
	void cmd_matrix_multiplier ()
		{
			bool stat = 1;
			Mat3 I = 	{
									{1, 0, 0},
									{0, 1, 0},
									{0, 0, 1}
								};

			Mat3 T = 	{
									{3025	, 5456, 7102},
									{2123	, 4555, 6785},
									{1		, 0		, 9876}
								};

			Mat3 X = 	{
									{1135, 2445, 5633},
									{4001, 8875, 2256},
									{7223, 8125, 9567}
								};

			Mat3 R = {0};
			Mat3 Y = {0};	
			
			uart_print("First up, a simple multiply by the Identity Matrix: \n");
			stat 						= instrument_cpi([&] {return matmul(I, T, R);});
			uart_print(">: Next up, a two random matrices get multiplied: \n");
			stat 						= instrument_cpi([&] {return matmul(X, T, Y);});
			uart_print(">: Tada! \n>: ");

		}
#endif

// Math Gauntlet Function
	bool math_gauntlet(int *A, int *B, int *sum, int *diff, int *product, int *quotient, int *remainder)
		{
			bool stat = false;
			*sum				= *A + *B;
			*diff				= *A - *B;
			*product		= *A * *B;
			*quotient		= *A / *B;
			*remainder	= *A % *B;
			stat = true;
			return stat;
		}

// The Main Compute Function/Orchestrator
	void compute ()
		{
			char magic 	= 0xFF;
			int tester 	= 10;
			int iter		= fibonacci_iterative(tester);
			int recur		= fibonacci_recursive(tester);
			if (iter == recur)
				magic = 0x01;
			else
				magic = 0x00;
		}

// Independent Computing Functions
	int fibonacci_iterative (int count)
		{
			if (count <= 1)
				return count;
			else
				{
					char internal_count = (count > 46) ? 46 : (char)(count);
					int sum, a, b;
					sum = 0;
					a		= 0;
					b 	= 1;
					for (char i = 1; i < internal_count; i++)
					{
						sum = a + b;
						a = b;
						b = sum;
					}
					return sum;
				}
		}
	int fibonacci_recursive (int count)
		{
			if (count <= 1)
				{
					return count;
				}
			return (fibonacci_recursive(count-1) + fibonacci_recursive(count-2));
		}
