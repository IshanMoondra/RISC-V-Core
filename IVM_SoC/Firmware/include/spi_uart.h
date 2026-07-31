#ifndef spi_uart
#define spi_uart

// char 	uart_getc					(bool blocking)																								__attribute__((weak, section(".spi_uart")));
// void 	uart_putc					(char c) 																											__attribute__((weak, section(".spi_uart")));
// void 	uart_print				(const char s[]) 																							__attribute__((weak, section(".spi_uart")));
// void 	dump_result				(long long result) 																						__attribute__((weak, section(".spi_uart")));
// void	dump_buffer				(const char *buf, int buf_len)																__attribute__((weak, section(".spi_uart")));
// void 	uart_print_hex32	(int val)																											__attribute__((weak, section(".spi_uart")));
// void 	uart_print_int32	(int val)																											__attribute__((weak, section(".spi_uart")));
// void 	uart_print_int64	(long long val)																								__attribute__((weak, section(".spi_uart")));
// void	uart_getline			(char *buf, int line_size)																		__attribute__((weak, section(".spi_uart")));
// int 	strcmp						(const char *a, const char *b)																__attribute__((weak, section(".spi_uart")));
// int 	strncmp						(const char *a, const char *b, int n)													__attribute__((weak, section(".spi_uart")));

// void 	process_command		(char *cmd, char *arg, volatile bool *running)								__attribute__((weak, section(".spi_uart")));
// void 	cmd_arg_tokenizer (char *buf, char *cmd, char *arg, int cmd_size, int arg_size)	__attribute__((weak, section(".spi_uart")));

char 	uart_getc					(bool blocking)																								;
void 	uart_putc					(char c) 																											;
void 	uart_print				(const char s[]) 																							;
void 	dump_result				(long long result) 																						;
void	dump_buffer				(const char *buf, int buf_len)																;
void 	uart_print_hex32	(int val)																											;
void 	uart_print_int32	(int val)																											;
void 	uart_print_int64	(long long val)																								;
void	uart_getline			(char *buf, int line_size)																		;
int 	strcmp						(const char *a, const char *b)																;
int 	strncmp						(const char *a, const char *b, int n)													;

void 	process_command		(char *cmd, char *arg, volatile bool *running)								;
void 	cmd_arg_tokenizer (char *buf, char *cmd, char *arg, int cmd_size, int arg_size)	;

#endif // spi_uart
