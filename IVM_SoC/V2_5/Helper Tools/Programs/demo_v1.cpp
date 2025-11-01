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
    }

extern "C" void _start() __attribute__((naked, section(".start")));
void _start()
{
    // Enable the I-cache please. 
    *(volatile int*)&SET_DIS_I_CACHE = 0;
        
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
void uart_init(int baud) __attribute__((section(".spi_uart")));
char uart_getc() __attribute__((section(".spi_uart")));
char uart_status() __attribute__((section(".spi_uart")));
void uart_putc(char c) __attribute__((section(".spi_uart")));

// Compute Functions
int fib_iter(int m) __attribute__((section(".spi_compute")));
int fib_recursive(int n) __attribute__((section(".spi_compute")));

int main()
{
    int magic_pass  = 2;
    int magic_fail  = 1;
    int magic_stat  = 255;
    char io_status  = 0;
    char recv       = 0;
    int fib_rs1     = 0;
    int fib_rs2     = 0;

    uart_init(1000);
    uart_putc('>');
    uart_putc('?');
    uart_putc('\n');
    asm volatile ("nop");
    io_status = uart_status();
    asm volatile ("nop");
    recv = uart_getc();
    asm volatile ("nop");
    fib_rs1 = fib_iter(10);
    asm volatile ("nop");
    fib_rs2 = fib_recursive(10);
    uart_putc('D');
    asm volatile ("nop");
    uart_putc(recv);
    asm volatile ("nop");
    if (fib_rs1 == fib_rs2)
        magic_stat = magic_pass;
    else
        magic_stat = magic_fail;
    
    return 0;
}

// UART Helpers
void uart_init(int baud)
{
    *(volatile int*)&UART_BAUD = baud;
}

char uart_getc()
{
    asm volatile ("nop");
    char got = *(volatile char*)&UART_RECV;
    return got;
}

char uart_status()
{
    asm volatile ("nop");
    char state = *(volatile char*)&UART_STAT;
    return state;
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

// Compute Functions
int fib_iter(int m)
{
    int a, b, c, n;
    a = 1;
    b = 0;
    c = 0;
    n = 0;
    if (m > 47)
        n = 47;
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