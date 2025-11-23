/*
demo_v1.cpp
Demo Program for SOC V1, given super tight constraints.
*/

extern "C" int main();
extern "C" 
    {
        extern int _stack_end;
        extern int* _global_pointer;

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

				extern int SET_DIS_SRAM_GATER;
				extern int GET_DIS_SRAM_GATER;

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
    // *(volatile int*)&SET_DIS_I_CACHE = 0;
        
    asm volatile 
    (
        "nop\n"
        "la sp, _stack_end\n"       // Set stack pointer
        "la gp, _global_pointer\n"  // Set global pointer (safe default)
    );
    int res;
    res = main();

    // Custom halt instruction (0xFFFFFFFF)
    asm(".word 0xFFFFFFFF");
}

// Boot Function
void soc_boot();
// GPIO Demo Function
void gpio_demo (int wait) 					__attribute__((section(".spi_gpio")));
// UART Function
void uart_putc(char c) 							 __attribute__((section(".spi_uart")));
void dump_results(int result)				 __attribute__((section(".spi_uart")));
// Compute Functions
void compute()											 __attribute__((section(".spi_compute")));
int fibonacci_iterative(int count) 	 __attribute__((section(".spi_compute")));

int main()
{
	char magic = 0xFF;
	soc_boot();
	asm ("nop");
	gpio_demo(50);
	magic = 0xBB;
	*(volatile int*)&SET_DIS_SRAM_GATER = 0;
	compute();
	magic = 0xAA;
	uart_putc('C');
	char recv = *(volatile char*)&UART_RECV;
	uart_putc(recv);
	magic = 0x55;
	return (0);
}

// Boot Up Function
void soc_boot()
{
	// Setting up the SOC on Boot
	// Panic Watchdog Timer
	int panic_high 	= 0;
	int panic_low		= 5000000;
	*(volatile int*)&SET_WATCHDOG_HIGH = panic_high;
	*(volatile int*)&SET_WATCHDOG_LOW	 = panic_low;
	// UART Baud Rate
	int baud = 1000;
	*(volatile int*)&UART_BAUD = baud;
	*(volatile int*)&SET_DIS_SRAM_GATER = 1;
	// Prompt on UART
	uart_putc('>');
	asm volatile ("nop");
	// Boot up complete
}

void gpio_demo(int wait)
{
	for (char i = 0; i < 8; i++)
	{
		int j = 0;
		*(volatile int*)&SET_GPIO_CHAN0 = 12;
		while (j < wait)
		{
			j++;
		}
		j = 0;
		*(volatile int*)&SET_GPIO_CHAN0 = 13;
		while (j < wait)
		{
			j++;
		}
	}
	*(volatile int*)&SET_GPIO_CHAN0			= 0;
	*(volatile int*)&SET_FLASH_SPECIAL 	= 0;
	return;
}

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

void dump_results(int result)
{
	// Start of Dump
	uart_putc('D');

	// Always send Byte 0
	uart_putc(result & 0xFF);
	if (result >= 0x100)
	{
		// Send Byte 1
		uart_putc((result >> 8) & 0xFF);
	}
	if (result >= 0x10000)
	{
		// Send Byte 2
		uart_putc((result >> 16) & 0xFF);
	}
	if (result >= 0x1000000)
	{
		// Send Byte 3
		uart_putc((result >> 24) & 0xFF);
	}

	// End of Dump
	uart_putc('D');
}

int fibonacci_iterative(int count)
{
	int local_count = 0;
	if (count > 46)
		local_count = 46;
	else
		local_count = count;
	int a, b, c;
	a = 0;
	b = 1;
	c = 0;
	for (char i = 1; i < local_count; i++)
	{
		c = a + b;
		a = b;
		b = c;
	}
	return c;
}

void compute()
{
	uart_putc('S');
	int fib_count = 10;
	int result 		= 0;
	result	= fibonacci_iterative(fib_count);
	dump_results(result);

	// *(_global_pointer+0x400)	= fibonacci_iterative(fib_count);
	// dump_results(*(_global_pointer+0x400));

	return;
}