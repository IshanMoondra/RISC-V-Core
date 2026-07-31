#include "spi_compute.h"
#include "spi_uart.h"
#include "soc_mmio.h"

#define BUF_SIZE 				128
#define CMD_BUF_SIZE   	32
#define ARGS_BUF_SIZE  	96

using namespace std;


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

bool math_gauntlet(int *A, int *B, int *sum, int *diff, int *product, int *quotient, int *remainder) __attribute__((section(".spi_compute")));

// Main Function
	int main()
	{
		volatile bool flag = true;
		// Setting up the line, command & argument buffers.
		// Setting up the line, command and argument sizes. 
    char buf[BUF_SIZE				];
		char cmd[CMD_BUF_SIZE		];
		char arg[ARGS_BUF_SIZE	];
		int line_size = 80;
		int cmd_size	= 24;
		int arg_size	= 56;

		// Let's go with a Math gauntlet. 
		// Pointer based adds, subtracts, multiplies, divides. 
		// Instrument all of them, and then change I$ way locks. 
		// I$ Way locks go from: 0, 1, 2, 3. 
		// Do the same math_gauntlet function, again and again. 

		int A 				= 73;
		int B 				= 47;
		int sum 			= 0;
		int diff 			= 0;
		int product 	= 0;
		int quotient 	= 0;
		int remainder	= 0;
		bool stat			= 0;
		
		int prev_miss	=	0;
		int curr_miss	= 0;

		uart_print("let's start!\n");

		// Cache Lock set to 0.
		*(volatile int*)&SET_I_LOCK = 0;
		prev_miss	=	*(volatile int*)&GET_PERFMON_MISS;
		stat = instrument_cpi([&] {return math_gauntlet(&A, &B, &sum, &diff, &product, &quotient, &remainder);});
		curr_miss	=	*(volatile int*)&GET_PERFMON_MISS;
		uart_print("\n>: Number of L1 I$ misses for Cache Lock = 0: ");
		uart_print_int32(curr_miss - prev_miss);
		asm volatile ("nop");
		uart_print("\n");

		// Cache Lock set to 1.
		*(volatile int*)&SET_I_LOCK = 1;
		prev_miss	=	*(volatile int*)&GET_PERFMON_MISS;
		stat = instrument_cpi([&] {return math_gauntlet(&A, &B, &sum, &diff, &product, &quotient, &remainder);});
		curr_miss	=	*(volatile int*)&GET_PERFMON_MISS;
		uart_print("\n>: Number of L1 I$ misses for Cache Lock = 1: ");
		uart_print_int32(curr_miss - prev_miss);
		asm volatile ("nop");
		uart_print("\n");

		// Cache Lock set to 2.
		*(volatile int*)&SET_I_LOCK = 2;
		prev_miss	=	*(volatile int*)&GET_PERFMON_MISS;
		stat = instrument_cpi([&] {return math_gauntlet(&A, &B, &sum, &diff, &product, &quotient, &remainder);});
		curr_miss	=	*(volatile int*)&GET_PERFMON_MISS;
		uart_print("\n>: Number of L1 I$ misses for Cache Lock = 2: ");
		uart_print_int32(curr_miss - prev_miss);
		asm volatile ("nop");
		uart_print("\n");

		// Cache Lock set to 3.
		*(volatile int*)&SET_I_LOCK = 3;
		prev_miss	=	*(volatile int*)&GET_PERFMON_MISS;
		stat = instrument_cpi([&] {return math_gauntlet(&A, &B, &sum, &diff, &product, &quotient, &remainder);});
		curr_miss	=	*(volatile int*)&GET_PERFMON_MISS;
		uart_print("\n>: Number of L1 I$ misses for Cache Lock = 3: ");
		uart_print_int32(curr_miss - prev_miss);
		asm volatile ("nop");
		uart_print("\n");


		flag = false;
		return flag;
	}
