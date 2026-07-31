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
void uart_init(int baud);
char uart_getc();
char uart_status();
void uart_putc(char c);

// Compute Functions
int fibonacci_iter(int count);

int main()
{
    // SOC Bootup
    uart_init(1000);
    asm volatile ("nop");
    // char io_stat    = uart_status(); // BOZO needs NOP padding
    char io_stat = *(volatile char*)&UART_STAT; // Works
    asm volatile ("nop");
    uart_putc(io_stat);
    asm volatile ("nop");
    int result = fibonacci_iter(10);
    asm volatile ("nop");
    return 0;
}

// UART Helpers
 void uart_init(int baud)
{
    *(volatile int*)&UART_BAUD = baud;
}

 char uart_getc()
{
    char got = *(volatile char*)&UART_RECV;
    return got;
}

 char uart_status()
{
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

int fibonacci_iter (int count)
{
    int a = 0;
    int b = 1;
    int c = 0;
    int loop = 0;
    if (count > 46)
        loop = 46;
    else
        loop = count;
    for (int i = 1; i < loop; i++)
    {
        c = a + b;
        a = b;
        b = c;
    }
    return c;
}