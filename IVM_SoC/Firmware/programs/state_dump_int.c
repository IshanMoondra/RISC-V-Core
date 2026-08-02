/*
demo_v1.cpp
Demo Program for SOC V1, given super tight constraints.
*/


#define RX_PENDING (1 << 2)
#define TRIGGER_CHAR 'A'
#define POLL_TIMEOUT 1000

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
// // In their own Space (Slow)
// void uart_init(int baud) __attribute__((section(".spi_uart")));
// char uart_getc() __attribute__((section(".spi_uart")));
// char uart_status() __attribute__((section(".spi_uart")));
// void uart_putc(char c) __attribute__((section(".spi_uart")));

void uart_init(int baud);
int uart_getc();
int uart_status();
void uart_putc(int c);


// Compute Functions
// // In their own Space (Slow)
// int fib_iter(int m) __attribute__((section(".spi_compute")));
// int fib_recursive(int n) __attribute__((section(".spi_compute")));

int fib_iter(int m);
int fib_recursive(int n);
void uart_poll_watchdog();
void dump_result(int result);
int compute();

int main()
{
    // SOC Bootup
    uart_init(1000);
    uart_putc('>');
    uart_putc('\n');
    // Boot Finished
    asm volatile ("nop");
    uart_poll_watchdog();
    asm volatile ("nop");
    return 0;
}

// UART Helpers
void uart_init(int baud)
{
    *(volatile int*)&UART_BAUD = baud;
}

int uart_getc()
{
    asm volatile ("nop");
    char got = *(volatile char*)&UART_RECV;
    return got;
}

int uart_status()
{
    asm volatile ("nop");
    char state = *(volatile char*)&UART_STAT;
    return state;
}

void uart_putc(int c)
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
    int result; 
    int timer = 0;
    while (timer < POLL_TIMEOUT)
    {
        asm volatile ("nop");
        int status = uart_status();
        asm volatile ("nop");
        // uart_putc(status);
        if (status & RX_PENDING)
        {
            asm volatile ("nop");
            char recv = uart_getc();
            asm volatile ("nop");
            if (recv == 'A')
            {
                result = compute();
                asm volatile ("nop");
                return;
            }
        }
        timer++;
    }
    uart_putc('T');
    asm volatile ("nop");
    return;
}

int compute()
{
    int fib_rs1, fib_rs2;
    int magic = 255;
    fib_rs1 = fib_iter(10);
    asm volatile ("nop");
    fib_rs2 = fib_recursive(10);
    asm volatile ("nop");
    if (fib_rs1 == fib_rs2)
        magic = 1;
    else
        magic = 0;
    asm volatile ("nop");
    // Signal Completion
    uart_putc('C');
    asm volatile ("nop");
    dump_result(fib_rs1);
    // dump_result(fib_iter(46));
    asm volatile ("nop");
    return magic;
}