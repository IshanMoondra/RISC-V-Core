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

// // UART Functions
// void uart_putc(char c); 
// void uart_print(const char s[]);
// void dump_result(long long result);

void uart_putc(char c) __attribute__((section(".spi_uart")));
void uart_print(const char s[]) __attribute__((section(".spi_uart")));
void dump_result(long long result) __attribute__((section(".spi_uart")));

// // Compute Functions

void add_ptr (int *a, int *b, int *c) __attribute__((section(".spi_compute")));
void sub_ptr (int *a, int *b, int *c) __attribute__((section(".spi_compute")));
void mul_ptr (volatile int *a, volatile int *b, volatile int *c) __attribute__((section(".spi_compute")));
void div_ptr (volatile int *a, volatile int *b, volatile int *c) __attribute__((section(".spi_compute")));

// void add_ptr (volatile int *a, volatile int *b, volatile int *c);
// void sub_ptr (volatile int *a, volatile int *b, volatile int *c);
// void mul_ptr (volatile int *a, volatile int *b, volatile int *c);
// void div_ptr (volatile int *a, volatile int *b, volatile int *c);

void add_ptr (volatile int *a, volatile int *b, volatile int *c)
{
	*c = *a + *b;
}

void sub_ptr (volatile int *a, volatile int *b, volatile int *c)
{
	*c = *a - *b;
}

void mul_ptr (volatile int *a, volatile int *b, volatile int *c)
{
	*c = *a * *b;
}

void div_ptr (volatile int *a, volatile int *b, volatile int *c)
{
	*c = *a / *b;
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
		dump_result(res);
		dump_result(*(volatile int*)&GET_PERFMON_MISS);
    // Custom halt instruction (0xFFFFFFFF)
    asm(".word 0xFFFFFFFF");
}

// Boot Up Function
	void soc_bootup()
	{
		// Setting up the SOC on Boot
		// Panic Watchdog Timer
		int panic_high 	= 0;
		int panic_low		= 250000;
		*(volatile int*)&SET_WATCHDOG_HIGH = panic_high;
		*(volatile int*)&SET_WATCHDOG_LOW	 = panic_low;
		// UART Baud Rate
		int baud = 50;
		*(volatile int*)&UART_BAUD = baud;
		// Prompt on UART
		uart_print("\nready.\n");
		uart_print(">");
		// Boot up complete
	}

// Main Function
	int main()
	{
		// SOC Bootup
		soc_bootup();
		// asm volatile ("nop");
		
		// Setting up the fixed location variables
		volatile int A 	= 48;
		volatile int B 	= 16;
		volatile int C 	= 0;
		volatile int D 	= 0;
		volatile int E 	= 0;
		volatile int F 	= 0;

		add_ptr(&A, &B, &C);
		sub_ptr(&A, &B, &D);
		mul_ptr(&A, &B, &E);
		div_ptr(&A, &B, &F);
		// Trying out without the Function requirement, and then with the pointer based. 
		
		dump_result((long long)&A);
		dump_result(A);

		dump_result((long long)&B);
		dump_result(B);

		dump_result((long long)&C);
		dump_result(C);

		dump_result((long long)&D);
		dump_result(D);

		dump_result((long long)&E);
		dump_result(E);

		dump_result((long long)&F);
		dump_result(F);
		
		bool flag = 0;
		if ((C == A+B) && (D == A-B) && (E == A*B) && (F = A/B))
		{
			flag = 0;
			uart_print("P");
		}
		else
		{
			flag = 1;
			uart_print("F");
		}

		return flag;
	}

// UART Helpers
	void uart_putc(char c)
	// For some reason, the UART status polling induces false triggers and fails/crashes.
	// Delay loops seem to be the best way to get it going for now. 
	{
		// Read the Baud Rate first.
		int get_baud = *(volatile int*)&UART_BAUD;
		// Send the Character
		*(volatile char*)&UART_SEND = c;
		// Wait Loop
		for (volatile int i = 0; i < get_baud; i++);
	}

void uart_print(const char s[])
{
	for (int i = 0; i < 128; i++)
	{
		if (s[i] == '\0')
			{ break; }
		else
			{
				uart_putc(s[i]);
				asm volatile ("nop");
			}
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
		while (count > 1 && bytes[count - 1] == 0) 
		{
			count--;
		}

		// Start marker
		uart_putc('D');
		
		// Length byte
		uart_putc((char)count);
		
		// Raw payload
		for (int i = 0; i < count; i++) {
				uart_putc(bytes[i]);
				asm volatile ("nop");
		}
	}
