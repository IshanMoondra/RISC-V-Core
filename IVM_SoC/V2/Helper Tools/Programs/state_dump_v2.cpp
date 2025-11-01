/*
demo_v1.cpp
Demo Program for SOC V1, given super tight constraints.
*/


#define RX_PENDING (1 << 2)
#define TRIGGER_CHAR 'A'
#define POLL_TIMEOUT 100

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

// UART Functions
void uart_putc(char c); // __attribute__((section(".spi_uart")));
void dump_result(int result); // __attribute__((section(".spi_uart")));
// In this variant, let us only keep functions that are beyond a minimum length
// void uart_putc(char c);     // Can't replace, long function

// Compute Functions

// int fib_iter(int m) __attribute__((section(".spi_compute")));
// int fib_recursive(int n) __attribute__((section(".spi_compute")));

int fib_iter(int m);
int fib_recursive(int n);
void uart_poll_watchdog();

char compute();

// GPIO Demo
void gpio_demo(int wait);

// Boot Up Function
void soc_bootup()
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

// Main Function
int main()
{
    // SOC Bootup
    soc_bootup();
    asm volatile ("nop");
    int soc_start   = *(volatile int*)&GET_PERFMON_SOCL;
    uart_poll_watchdog();
    asm volatile ("nop");
    int soc_end     = *(volatile int*)&GET_PERFMON_SOCL;
    int soc_time    = soc_end - soc_start;
    // dump_result(soc_time);
    asm volatile ("nop");
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

// Compute Functions
int fib_iter(int m)
{
    register int a, b, c, n;
    a = 1;
    b = 0;
    c = 0;
    n = 0;
    if (m > 46)
        n = 46;
    else
        n = m;
    
    for (int i = 1; i < n; i++)
    {
        c = a + b;
        b = a;
        a = c;
    }
    return c;
}

int fib_recursive(int n)
{
    if (n <= 1)
    {
        return n;
    }
    return (fib_recursive(n-1) + fib_recursive(n-2));
}

void dump_result(int result)
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

void uart_poll_watchdog()
{
    char result; 
    int timer = 0;
    while (timer < POLL_TIMEOUT)
    {
        char status = *(volatile char*)&UART_STAT;
        if (status & RX_PENDING)
        {
            char recv = *(volatile char*)&UART_RECV;
            if (recv == 'A')
            {
                result = compute();
                asm volatile ("nop");
								// gpio_demo(500);
                return;
            }
        }
        timer++;
    }
    uart_putc('T');
    asm volatile ("nop");
    return;
}

char compute()
{
	int fib_rs1 = 0;
	int fib_rs2 = 0;
	int fib_cnt = 46;
	char magic = 255;
	int start   = *(volatile int*)&GET_PERFMON_COREL;
	int before  = *(volatile int*)&GET_PERFMON_RET_CNT;
	fib_rs1 = fib_iter(fib_cnt);
	asm volatile ("nop");
	int after   = *(volatile int*)&GET_PERFMON_RET_CNT;
	int end     = *(volatile int*)&GET_PERFMON_COREL;
	int time    = end - start;
	int during  = after - before;
	dump_result(time);
	dump_result(during);
	// start   = *(volatile int*)&GET_PERFMON_COREL;
	// fib_rs2 = fib_recursive(fib_cnt);
	// end     = *(volatile int*)&GET_PERFMON_COREL;
	// time    = end - start;
	// dump_result(time);
	// if (fib_rs1 == fib_rs2)
	//     magic = 1;
	// else
	//     magic = 0;
	// Signal Completion
	dump_result(fib_rs1);
	asm volatile ("nop");
	uart_putc('C');
	asm volatile ("nop");
	return magic;
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