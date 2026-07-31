#include "spi_compute.h"
#include "spi_uart.h"
#include "soc_mmio.h"
#include "soc_syscalls.h"

#define TX_DONE		 			(1 << 0)
#define RX_PENDING 			(1 << 1)

using namespace std;

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
	
	// Print Integer to Hex over UART
	void uart_print_hex32(int val)
		{
			char addr_buf[9];
			for(int i = 7; i >= 0; i--) 
				{
					int nibble = (val >> (i*4)) & 0xF;
					addr_buf[7-i] = nibble < 10 ? '0'+nibble : 'A'+(nibble-10);
				}
			addr_buf[8] = '\0';
			uart_print(addr_buf);
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
					else if (c == '\b' || c == 127) 
						{ 
							if (idx > 0) 
								{
									idx--;
									uart_print("\b \b"); // erase character on terminal
								}
							else idx = 0; 
						}
					else
        		{
							// Store character if buffer not full
							if (idx < line_size - 1) 
								if (c != 0x00) 
									{ 
										buf[idx++] = c;
										// Note: Always add a safety NOP when using uart_putc(). Need to investigate why.
										uart_putc(c); // echo character back 
										asm volatile ("nop");
									}
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
			else if (strcmp(cmd, "matrix") == 0)
				{
					cmd_matrix_multiplier();
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
