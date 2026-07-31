#include "spi_compute.h"
#include "spi_uart.h"
#include "soc_mmio.h"
#include "soc_syscalls.h"

using namespace std;

// Boot Up Function
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
			asm volatile ("nop");
			uart_print_int64(panic_read);
			asm volatile ("nop");
			uart_print("\t Clock Cycles.");
			uart_print("\n>: ");
			// Boot up complete
		}