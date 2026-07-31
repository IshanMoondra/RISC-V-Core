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

// // UART Functions

// I-Cache Thrashing
void uart_putc(char c) __attribute__((section(".spi_uart")));
void dump_result(long long result) __attribute__((section(".spi_uart")));

// Non I-Cache Thrashing
// void uart_putc(char c); 
// void dump_result(long long result);

// // Compute Functions

// I-Cache Thrashing
long long fib_iter(int m) __attribute__((section(".spi_compute")));
long long fib_recursive(int n) __attribute__((section(".spi_compute")));
char compute() __attribute__((section(".spi_compute")));

// // Non I-Cache Thrashing
// long long fib_iter(int m);
// long long fib_recursive(int n);
// char compute(); 

void uart_poll_watchdog();

// Boot Up Function
void soc_bootup()
{
    // Setting up the SOC on Boot
    // Panic Watchdog Timer
    int panic_high 	= 0;
    int panic_low		= 200000000;
		*(volatile int*)&SET_WATCHDOG_HIGH = panic_high;
		*(volatile int*)&SET_WATCHDOG_LOW	 = panic_low;
    // UART Baud Rate
    int baud = 50;
    *(volatile int*)&UART_BAUD = baud;
		// Prompt on UART
		uart_putc('\n');
		asm volatile ("nop");
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
		int soc_before 	= *(volatile int*)&GET_PERFMON_RET_CNT;
    uart_poll_watchdog();
    asm volatile ("nop");
		int soc_after		= *(volatile int*)&GET_PERFMON_RET_CNT;
    int soc_end     = *(volatile int*)&GET_PERFMON_SOCL;
    int soc_time    = soc_end - soc_start;
		int soc_during 	= soc_after - soc_before;
    uart_putc('R');
		asm volatile ("nop");
		dump_result(soc_during);
		uart_putc('Y');
		asm volatile ("nop");
		dump_result(soc_time);
    asm volatile ("nop");

		int i_miss = *(volatile int*)&GET_PERFMON_MISS;
		asm volatile ("nop");
		dump_result(i_miss);
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
long long fib_iter(int m)
{
    long long a, b, c;
		int n;
    a = 1;
    b = 0;
    c = 0;
    n = 0;
		n = m;
    
    for (int i = 1; i < n; i++)
    {
        c = a + b;
        b = a;
        a = c;
    }
    return c;
}

long long fib_recursive(int n)
{
    if (n <= 1)
    {
        return n;
    }
    return (fib_recursive(n-1) + fib_recursive(n-2));
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

void uart_poll_watchdog()
{
	char result; 
	int timer = 0;
	uart_putc('?');
	asm volatile ("nop");
	result = compute();
	asm volatile ("nop");
	return;
}

char compute()
{
	long long fib_rs1 = 0;
	long long fib_rs2 = 0;
	int fib_cnt = 15;
	char magic = 255;
	int start   = *(volatile int*)&GET_PERFMON_COREL;
	int before  = *(volatile int*)&GET_PERFMON_RET_CNT;
	fib_rs1 = fib_iter(fib_cnt);
	asm volatile ("nop");
	int after   = *(volatile int*)&GET_PERFMON_RET_CNT;
	int end     = *(volatile int*)&GET_PERFMON_COREL;
	int time    = end - start;
	int during  = after - before;
	uart_putc('Y');
	asm volatile ("nop");
	dump_result(time);
	asm volatile ("nop");
	uart_putc('R');
	asm volatile ("nop");
	dump_result(during);
	asm volatile ("nop");
	start   = *(volatile int*)&GET_PERFMON_COREL;
	before  = *(volatile int*)&GET_PERFMON_RET_CNT;
	fib_rs2 = fib_recursive(fib_cnt);
	after   = *(volatile int*)&GET_PERFMON_RET_CNT;
	end     = *(volatile int*)&GET_PERFMON_COREL;
	time    = end - start;
	during  = after - before;
	uart_putc('Y');
	asm volatile ("nop");
	dump_result(time);
	asm volatile ("nop");
	uart_putc('R');
	asm volatile ("nop");
	dump_result(during);
	if (fib_rs1 == fib_rs2)
	{
		magic = 1;
		uart_putc('P');
		asm volatile ("nop");
	}
	else
	{
		magic = 0;
		uart_putc('F');
		asm volatile ("nop");
	}
	// Signal Completion
	asm volatile ("nop");
	dump_result(fib_rs1);
	asm volatile ("nop");
	uart_putc('C');
	asm volatile ("nop");
	return magic;
}
