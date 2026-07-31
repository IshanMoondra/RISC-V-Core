/*
demo_v1.cpp
Demo Program for SOC V1, given super tight constraints.
*/

#define TX_DONE		 			(1 << 0)
#define RX_PENDING 			(1 << 1)
#define BUF_SIZE 				128
#define CMD_BUF_SIZE   	32
#define ARGS_BUF_SIZE  	96

extern "C" int main();
// Defining all the Linker Provided MMIO Addresses. 
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
// void uart_getline			(char *buf, int cmd_size);
// void cmd_arg_tokenizer (char *buf, char *cmd, char *arg, int line_size, int arg_size);
// int 	strcmp						(const char *a, const char *b);
// int 	strncmp						(const char *a, const char *b, int n);
// void process_command		(char *cmd, char *arg, volatile bool *running);

char 	uart_getc					(bool blocking)									__attribute__((section(".spi_uart")));
void 	uart_putc					(char c) 												__attribute__((section(".spi_uart")));
void 	uart_print				(const char s[]) 								__attribute__((section(".spi_uart")));
void 	dump_result				(long long result) 							__attribute__((section(".spi_uart")));
void	dump_buffer				(const char *buf, int buf_len)	__attribute__((section(".spi_uart")));
void 	uart_print_int32	(int val)												__attribute__((section(".spi_uart")));
void 	uart_print_int64	(long long val)									__attribute__((section(".spi_uart")));
void	uart_getline			(char *buf, int line_size)			__attribute__((section(".spi_uart")));
int 	strcmp						(const char *a, const char *b)	__attribute__((section(".spi_uart")));
int 	strncmp						(const char *a, const char *b, int n)	__attribute__((section(".spi_uart")));
void 	process_command		(char *cmd, char *arg, volatile bool *running)								__attribute__((section(".spi_uart")));
void 	cmd_arg_tokenizer (char *buf, char *cmd, char *arg, int cmd_size, int arg_size)	__attribute__((section(".spi_uart")));

// Sub Program / Utility Functions
void cmd_echo(char *arg);
void cmd_help(char *arg);
void cmd_exit(char *arg, volatile bool *running);

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
		uart_print("Main returned: ");
		uart_print_int32(main_return);
		asm volatile ("nop");
		
		// Printing the number of L1 I$ misses.
		uart_print("\n>: Number of L1 I$ misses: ");
		uart_print_int32(*(volatile int*)&GET_PERFMON_MISS);
		asm volatile ("nop");
    // Power off. 
		uart_print("\n>: POWEROFF.\n");
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
		// Setting up the line, command & argument buffers.
		// Setting up the line, command and argument sizes. 
    char buf[BUF_SIZE];
		char cmd[CMD_BUF_SIZE];
		char arg[ARGS_BUF_SIZE];
		int line_size = 80;
		int cmd_size	= 24;
		int arg_size	= 56;
		// The Main Shell loop
		while (flag)
			{
				uart_getline(buf, line_size);
				cmd_arg_tokenizer(buf, cmd, arg, cmd_size, arg_size);
				process_command(cmd, arg, &flag);
				uart_print("\n>: ");
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
				if (status & RX_PENDING)
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
				if (status & TX_DONE)
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
	
	// String Compare function, first N chars only. 
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
	
	// String Compare Function
	int strcmp(const char *a, const char *b)
		{
			for (int i = 0; ; i++)
    		{
        	if (a[i] != b[i])
            return (unsigned char)a[i] - (unsigned char)b[i];

        	if (a[i] == '\0')   // both are equal AND ended
            return 0;
    		}
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

	// Get Line Wrapper for the UART:
	void uart_getline(char *buf, int line_size)
		{
			char c 	= '\0';
			int idx = 0;
			while (1)
				{
					c = uart_getc(1);
					if (c == '\n' || c == '\r')
						{
							// Replace newline with null terminator
							buf[idx] = '\0';
							uart_print("\n>: ");
							idx = 0;
							break;
						}
					else
        		{
							// Store character if buffer not full
							if (idx < line_size - 1) 
								if (c != 0x00) buf[idx++] = c;
							else
								{
									// Buffer full: terminate and reset safely
									buf[line_size - 1] = '\0';
									uart_print("\nLine Overflow.\n> ");
									dump_buffer(buf, line_size);
									idx = 0;
									break;
								}
        		}
				}	
		}

	
	
// Functions to operate as the shell. 	
	// Command Tokenizer
	void cmd_arg_tokenizer (char *buf, char *cmd, char *arg, int cmd_size, int arg_size)
		{
			// Let us trim leading spaces first. 
			// Something something: Copy over the command into the command buffer
			int i		= 0;
			int j		= 0;

			while (*buf && *buf != ' ' && i < cmd_size - 1) 
				{
        	cmd[i++] = *buf++;
    		}
    	cmd[i] = '\0';
			
			// Skip spaces
			while (*buf == ' ') buf++;

			// Copy args (preserve spaces inside)
			while (*buf && j < arg_size - 1) 
				{
					arg[j++] = *buf++;
				}
			arg[j] = '\0';
		}
	// Command Processor
	void process_command(char *cmd, char *arg, volatile bool *running)
		{
			if (cmd[0] == '\0') return;
			else if (strcmp(cmd, "echo") == 0)
				{
					cmd_echo(arg);
				}
			else if (strcmp(cmd, "help") == 0)
				{
					cmd_help(arg);
				}
			else if (strcmp(cmd, "free") == 0)
				{
					cmd_free();
				}
			else if (strcmp(cmd, "EXIT") == 0)
				{
					cmd_exit(arg, running);
				}
			else
				{
					uart_print("?");
					uart_print("\n>: Type help for more info.");
				}
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
			uart_print(">: 1. echo \n");
			uart_print(">: 2. free \n");
			uart_print(">: 3. EXIT \n");
			uart_print(">: 4. help \n"); 
			uart_print(">: Type help to see this again. ");
		}
	// The EXIT Command
	void cmd_exit(char *arg, volatile bool *running)
		{
			uart_print("Exiting...\n");
			*running = false;
		}