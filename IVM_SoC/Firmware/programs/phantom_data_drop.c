/*
demo_v1.cpp
Demo Program for SOC V1, given super tight constraints.
*/


#define RX_PENDING (1 << 2)
#define TRIGGER_CHAR 'S'
#define POLL_TIMEOUT 10000

extern "C" int main();
extern "C" 
	{
		extern int _stack_end;
		extern int _global_pointer;

		extern int SET_DYNAMIC_BASE;
		extern int SET_DYNAMIC_BOUND;
		extern int GET_DYNAMIC_BASE;
		extern int GET_DYNAMIC_BOUND;

		extern int SET_DIS_I_CACHE;
		extern int GET_DIS_I_CACHE;
		
		extern int UART_STAT;
		extern int UART_BAUD;
		extern int UART_SEND;
		extern int UART_RECV;

		extern int SPI_BASE;

		extern int SET_PERFMON_STATUS;
		extern int SET_PERFMON_SCALAR;
		extern int SET_PERFMON_TIMER;
		extern int PET_WATCHDOG;
		extern int SET_WATCHDOG_HIGH;
		extern int SET_WATCHDOG_LOW;
		
		extern int GET_WATCHDOG_HIGH;
		extern int GET_WATCHDOG_LOW;
		extern int GET_PERFMON_STATUS;
		extern int GET_PERFMON_SOCH;
		extern int GET_PERFMON_SOCL;
		extern int GET_PERFMON_COREH;
		extern int GET_PERFMON_COREL;
		extern int GET_PERFMON_SCALAR;
		extern int GET_PERFMON_TIMER;
		extern int GET_PERFMON_MISS;
		extern int GET_PERFMON_RET_CNT;

		extern int GET_GPIO_WORD;
		extern int GET_GPIO_HALF_HIGH;
		extern int GET_GPIO_HALF_LOW;
		extern int GET_FLASH_SPECIAL;
		extern int GET_GPIO_CHAN0;
		extern int GET_GPIO_CHAN1;
		extern int GET_GPIO_CHAN2;
		extern int GET_GPIO_CHAN3;

		extern int SET_GPIO_WORD;
		extern int SET_GPIO_HALF_HIGH;
		extern int SET_GPIO_HALF_LOW;
		extern int SET_FLASH_SPECIAL;
		extern int SET_GPIO_CHAN0;
		extern int SET_GPIO_CHAN1;
		extern int SET_GPIO_CHAN2;
		extern int SET_GPIO_CHAN3;
	}

extern "C" void _start() __attribute__((naked, section(".start")));
void _start()
{
    // Enable the I-cache please. 
    // Enable the D-cache please.
    // Setting up the Stack and the Heap
    asm volatile 
    (
			"nop\n"
			"la sp, _stack_end\n"       // Set stack pointer
			"la gp, _global_pointer\n"  // Set global pointer (safe default)
    );
    int res;
		// Calling Main
    res = main();

    // Custom halt instruction (0xFFFFFFFF)
    asm(".word 0xFFFFFFFF");
}

// UART Functions
// void uart_putc(char c); 
// void dump_result(long long result);

void uart_putc(char c) __attribute__((section(".spi_uart")));
void dump_result(long long result) __attribute__((section(".spi_uart")));

// Compute Functions

int add_ptr (int a, int b) __attribute__((section(".spi_compute")));

// int add_ptr (int a, int b);

int add_ptr (int a, int b)
{
	int c = a + b;
	return c;
}

// Boot Up Function
	void soc_bootup()
	{
		// Setting up the SOC on Boot
		// Panic Watchdog Timer
		int panic_high 	= 0;
		int panic_low		= 100000;
		*(volatile int*)&SET_WATCHDOG_HIGH = panic_high;
		*(volatile int*)&SET_WATCHDOG_LOW	 = panic_low;
		// UART Baud Rate
		int baud = 50;
		*(volatile int*)&UART_BAUD = baud;
		// Prompt on UART
		// uart_putc('\n');
		asm volatile ("nop");
		// uart_putc('>');
		asm volatile ("nop");
		// Boot up complete
	}

// Main Function
	int main()
	{
		// SOC Bootup
		soc_bootup();
		asm volatile ("nop");
		
		// Setting up the fixed location variables
		int A = 0x50;
		int B = 0x05;
		int C = 0;
		int i_miss = 0;
		asm volatile ("nop");
		asm volatile ("nop");
		asm volatile ("nop");
		asm volatile ("nop");

		C = add_ptr(A, B);
		asm volatile ("nop");
		
		uart_putc('A');
		asm volatile ("nop");
		dump_result(A);
		asm volatile ("nop");

		uart_putc('B');
		asm volatile ("nop");
		dump_result(B);
		asm volatile ("nop");

		uart_putc('C');
		asm volatile ("nop");
		dump_result(C);
		asm volatile ("nop");

		uart_putc('M');
		asm volatile ("nop");
		dump_result(*(volatile int*)&GET_PERFMON_MISS);
		asm volatile ("nop");

		if (C == (A+B))
			{
				uart_putc('P');
				asm volatile ("nop");
			}
		else
			{
				uart_putc('F');
				asm volatile ("nop");
			}
		
		return 0;
	}

// UART Helpers
	void uart_putc(char c)
	{
		// Read the Baud Rate first.
		int get_baud = *(volatile int*)&UART_BAUD;
		// Send the Character
		*(volatile char*)&UART_SEND = c;
		// Wait Loop
		for (int j = 0; j < 1; j++)
		{
			for (int i = 0; i < get_baud; i++);
		}
	}

void dump_result(long long result)
	{
		unsigned char bytes[12];

		// Extract all 8 bytes (LSB first)
		for (int i = 0; i < 8; i++) {
			bytes[i] = (unsigned char)((result >> (8 * i)) & 0xFF);
		}

		// Determine how many bytes are actually needed (trim leading zeros)
		int count = 8;
		while (count > 1 && bytes[count - 1] == 0) {
				count--;
		}

		// Start marker
		uart_putc('D');
		asm volatile ("nop");

		// Length byte
		uart_putc((char)count);
		asm volatile ("nop");

		// Raw payload
		for (int i = 0; i < count; i++) {
			uart_putc(bytes[i]);
			asm volatile ("nop");
		}

		asm volatile ("nop");
	}
