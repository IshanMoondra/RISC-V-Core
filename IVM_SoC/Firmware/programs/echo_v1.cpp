/*
demo_v1.cpp
Demo Program for SOC V1, given super tight constraints.
*/


#define RX_PENDING 			(1 << 2)
#define TRIGGER_CHAR 		'S'
#define POLL_TIMEOUT 		10000
#define BUF_SIZE 				128
#define CMD_BUF_SIZE   	32
#define ARGS_BUF_SIZE  	96


extern "C" int main();
extern "C" 
    {
        extern int _stack_end;
				extern int _heap_start;
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

// SOC Boot Function
void soc_bootup();

// Memory Management Functions:
static int 									*heap_end = &_heap_start;
static inline unsigned int 	get_sp		(void);
void 												cmd_free	(void);
void* 											_sbrk			(int incr);


// // UART Functions
// char uart_getc					(bool blocking)
// void uart_putc					(char c); 
// void uart_print				(const char s[]);
// void dump_result				(long long result);
// void	dump_buffer				(const char *buf, int buf_len);
// void uart_print_int32	(int val);
// void uart_print_int64	(long long val);
// int 	strncmp						(const char *a, const char *b, int n);
// void process_command		(char *buf, volatile bool *running);

char 	uart_getc					(bool blocking)									__attribute__((section(".spi_uart")));
void 	uart_putc					(char c) 												__attribute__((section(".spi_uart")));
void 	uart_print				(const char s[]) 								__attribute__((section(".spi_uart")));
void 	dump_result				(long long result) 							__attribute__((section(".spi_uart")));
void	dump_buffer				(const char *buf, int buf_len)	__attribute__((section(".spi_uart")));
void 	uart_print_int32	(int val)												__attribute__((section(".spi_uart")));
void 	uart_print_int64	(long long val)									__attribute__((section(".spi_uart")));
int 	strncmp						(const char *a, const char *b, int n)	__attribute__((section(".spi_uart")));
void 	process_command		(char *buf, volatile bool *running)		__attribute__((section(".spi_uart")));

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
			"nop\n"
		);
		soc_bootup();
		int main_return = main();
		
		// Printing the Main return code
		uart_print("\nMain returned: ");
		uart_print_int32(main_return);
		asm volatile ("nop");
		
		// Printing the number of L1 I$ misses.
		uart_print("\nNumber of L1 I$ misses: ");
		uart_print_int32(*(volatile int*)&GET_PERFMON_MISS);
		asm volatile ("nop");
    // Power off. 
		uart_print("\npoweroff.\n");
		// Custom halt instruction (0xFFFFFFFF)
		asm volatile (".word 0xFFFFFFFF");
	}

// Boot Up Function
	void soc_bootup()
	{
		// Setting up the SOC on Boot
		// Panic Watchdog Timer
		volatile int panic_high 	= 0;
		volatile int panic_low		= (4 << 22);
		*(volatile int*)&SET_WATCHDOG_HIGH = panic_high;
		*(volatile int*)&SET_WATCHDOG_LOW	 = panic_low;
		// UART Baud Rate
		int baud = 50;
		*(volatile int*)&UART_BAUD = baud;
		// Prompt on UART
		uart_print("\nREADY. \t");
		cmd_free();
		uart_print("\nWatchdog Timer set to: ");
		long long panic_read = ((*(volatile int*)&GET_WATCHDOG_HIGH << 32) | *(volatile int*)&GET_WATCHDOG_LOW);
		uart_print_int64(panic_read);
		asm volatile ("nop");
		uart_print("\t Clock Cycles.");
		uart_print("\n>: ");
		// Boot up complete
	}

// Doing some Run time Memory management now: 
// Read current stack pointer:
static inline unsigned int get_sp(void) 
	{
    unsigned int sp;
    __asm__ volatile ("mv %0, sp" : "=r"(sp));
    return sp;
	}
// The basis of my free function.
	unsigned int get_free_bytes(void) 
	{
    unsigned int sp = get_sp();
    return (unsigned int)(sp - (unsigned int)heap_end);
	}
// The actual Free function
void cmd_free(void) 
	{
    unsigned int free = get_free_bytes();
    uart_print_int32(free);
		asm volatile ("nop");
    uart_print(" bytes free.");
	}
// Something important for later? Hint MALLOC()
void* _sbrk(int incr) 
	{
    int *prev = heap_end;

    unsigned int sp = get_sp();

    // Check for heap/stack collision
    if ((unsigned int)(heap_end + incr) >= sp) 
			{
        uart_print("\nOUT OF MEMORY\n");
        return (void*)-1;
    	}

    heap_end += incr;
    return prev;
	}

// Main Function
	int main()
	{
		volatile bool flag = true;
		// Need the loop to basically wait until \n and then echo it all out. 
    char buf[BUF_SIZE];
    int idx = 0;
		char c 	= 0x00;
		
		while (1)
    {
			c = uart_getc(0);
			c = uart_getc(1);
			// Handle newline (support both CR and LF)
			if (c == '\n' || c == '\r')
        {
					// Replace newline with null terminator
					buf[idx] = '\0';
					uart_print("\n>: ");

					if (strncmp(buf, "free", 4) == 0)
						{
							cmd_free();
						}
					else if (strncmp(buf, "help", 4) == 0)
						{
							uart_print("Following commands supported: \n");
							uart_print(">: 1. echo \n");
							uart_print(">: 2. free \n");
							uart_print(">: 3. EXIT \n");
							uart_print(">: 4. help \n"); 
							uart_print(">: Type help to see this again. ");
						}
					else if (strncmp(buf, "echo ", 5) == 0)
						{
							uart_print(buf+5);
							// uart_print("\n");
						}
					else if (strncmp(buf, "EXIT", 4) == 0)
						{
							uart_print("Exiting... \n");
							flag = 0;
							break;
						}
					else
						{
							// Print the collected buffer
							uart_print("Unknown command: ");
							uart_print(buf);
							uart_print("\n>: Type help for list of supported commands.");
						}
					
					// Reset & clear the buffer. 
					for (idx = 0; idx < BUF_SIZE -1; idx++)
					{
						buf[idx] = '\0';
					}
					idx = 0;

					// Print prompt again
					uart_print("\n>: ");
        }
			else
        {
					// Store character if buffer not full
					if (idx < BUF_SIZE - 1)
						{
							if (c != 0x00)
							{
								buf[idx++] = c;	
							}
						}
					else
						{
							// Buffer full: terminate and reset safely
							buf[BUF_SIZE - 1] = '\0';
							uart_print("\n[buffer overflow]\n> ");
							dump_buffer(buf, BUF_SIZE);
							idx = 0;
							break;
						}
        }
    }
		return flag;
	}

// UART Helpers
	char uart_getc(bool blocking)
	{
		char c = 0x00;
		c = *(volatile char*)&UART_RECV;	// Non Blocking Read // BOZO
		while(blocking)
		{
			char status = *(volatile char*)&UART_STAT;
			if (status & 0x02)
			{
				c = *(volatile char*)&UART_RECV;
				break;
			}
		}
		return c;
	}
	
	void uart_putc(char c)
	// Solved. Needed to preset the TX Done bit in the UART TX Module.
	{
		char status = *(volatile char*)&UART_STAT;
		while (1)
		{
			char status = *(volatile char*)&UART_STAT;
			if (status & 0x01)
			{
				*(volatile char*)&UART_SEND = c;
				break;
			}
		}
		return;
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
			for (int i = 0; i < 8; i++) 
				{
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
	
	int strncmp(const char *a, const char *b, int n) 
		{
    	for (int i = 0; i < n; i++) 
				{
        	if (a[i] != b[i])
						return (unsigned char)a[i] - (unsigned char)b[i];
        	if (a[i] == '\0')
						return 0;
    		}
    	return 0;
		}
	void dump_buffer(const char *buf, int buf_len)
		{
			const char *p = (const char *)buf;
			for (int j = 0; j < buf_len; j++)
				{
					char val = *p;
					dump_result(val);	
					*p++;
				}
		}
	
	// Integer to decimal
	void uart_print_int32(int val)
		{
			char buf[12];   // enough for 32-bit signed + null
			int i = 0;
			bool neg = false;

			if (val < 0) 
				{
					neg = true;
					val = -val; 
				}

			if (val == 0)
				{
					uart_putc('0');
					return;
				}

			// fill buffer in reverse
			while (val > 0) 
				{
					int digit = val % 10; 
					buf[i++] = '0' + digit;
					val = val / 10; 
				}

			if (neg) buf[i++] = '-';

			// print in correct order
			while (i--) 
				{
					uart_putc(buf[i]);
					asm volatile ("nop");
				}
		}
	
	// Long long integer to decimal
	void uart_print_int64(long long val)
		{
			char buf[21];   // enough for 64-bit signed + null
			int i = 0;
			bool neg = false;

			if (val < 0) 
				{
					neg = true;
					val = -val;  // will call __divdi3 if needed
				}

			if (val == 0)
				{
					uart_putc('0');
					return;
				}

			// fill buffer in reverse
			while (val > 0) 
				{
					int digit = val % 10; 
					buf[i++] = '0' + digit;
					val = val / 10; 
				}

			if (neg) buf[i++] = '-';

			// print in correct order
			while (i--) 
				{
					uart_putc(buf[i]);
					asm volatile ("nop");
				}
		}

	// // Command Processor
	// void process_command(char *buf, volatile bool *running)
	// {
  //   // Ignore empty input
	// 	*running = true;
  //   if (buf[0] == '\0') return;

  //   // Split command and args
  //   char *args = buf;
  //   while (*args && *args != ' ') args++;

  //   if (*args) 
	// 		{
  //       *args = '\0';
  //       args++;
  //   	}

  //   if (strncmp(buf, "echo" , 4) == 0) 
	// 		{
  //       uart_print(args);
  //       uart_print("\n");
  //   	}
  //   else if (strncmp(buf, "free", 4) == 0) 
	// 		{
  //       cmd_free();
  //   	}
	// 	else if (strncmp(buf, "help", 4) == 0)
	// 		{
	// 			uart_print("Following commands exist: echo, free, exit. Type help to see this again.\n");
	// 		}
  //   else if (strncmp(buf, "exit", 4) == 0) 
	// 		{
  //       uart_print("\nExiting...\n");
  //       *running = false;
  //   	}
  //   else 
	// 		{
  //       uart_print("?\n");
	// 			uart_print("Type help for more info.\n");
  //   	}
	// }

	// void process_command(char *buf, volatile bool *running)
	// 	{
	// 		char cmd[CMD_BUF_SIZE];
	// 		char args[ARGS_BUF_SIZE];

	// 		int i = 0, j = 0;

	// 		// // Skip leading spaces
	// 		// while (*buf == ' ') buf++;

	// 		// -------------------------
	// 		// Extract command
	// 		// -------------------------
	// 		while (*buf && *buf != ' ' && i < CMD_BUF_SIZE - 1) 
	// 			{
	// 				cmd[i++] = *buf++;
	// 			}
	// 		cmd[i] = '\0';

	// 		// // Skip space between cmd and args
	// 		// while (*buf == ' ') buf++;

	// 		// -------------------------
	// 		// Extract args
	// 		// -------------------------
	// 		while (*buf && j < ARGS_BUF_SIZE - 1) 
	// 			{
	// 				args[j++] = *buf++;
	// 			}
	// 		args[j] = '\0';
			
	// 		uart_print("CMD: ");
	// 		uart_print(cmd);
	// 		uart_print("\t ARGS: ");
	// 		uart_print(args);
	// 		// -------------------------
	// 		// Dispatch
	// 		// -------------------------
	// 		if (cmd[0] == '\0') 
	// 			{
	// 				return;
	// 			}
	// 		else if (strncmp(cmd, "echo", 4) == 0) 
	// 			{
	// 				uart_print(args);
	// 				uart_print("\n");
	// 			}
	// 		else if (strncmp(cmd, "free", 4) == 0) 
	// 			{
	// 				cmd_free();
	// 			}
	// 		else if (strncmp(cmd, "help", 4) == 0)
	// 			{
	// 				uart_print("Supported commands: help, echo, free, exit. Type help to see this again. \n");
	// 			}
	// 		else if (strncmp(cmd, "exit", 4) == 0) 
	// 			{
	// 				uart_print("\nExiting...\n");
	// 				*running = false;
	// 			}
	// 		else 
	// 			{
	// 				uart_print("Unknown command: ");
	// 				uart_print(cmd);
	// 				uart_print("\n");
	// 				uart_print("Type help to see list of availabe commands. \n");
	// 			}
	// 	}