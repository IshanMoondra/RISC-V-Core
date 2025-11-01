/*
demo_v1.cpp
Demo Program for SOC V1, given super tight constraints.
*/

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

void soc_boot();
void gpio_demo (int wait);
void uart_putc(char c) __attribute__((section(".spi_uart")));
// void uart_putc(char c);

int main()
{
	char magic = 0xFF;
	soc_boot();
	asm ("nop");
	gpio_demo(50);
	magic = 0xAA;
	uart_putc('C');
	return 0;
}

// Boot Up Function
void soc_boot()
{
	// Setting up the SOC on Boot
	// Panic Watchdog Timer
	int panic_high 	= 0;
	int panic_low		= 500000;
	*(volatile int*)&SET_WATCHDOG_HIGH = panic_high;
	*(volatile int*)&SET_WATCHDOG_LOW	 = panic_low;
	// UART Baud Rate
	int baud = 1000;
	*(volatile int*)&UART_BAUD = baud;
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