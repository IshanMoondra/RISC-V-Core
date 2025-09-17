extern "C" int main();

// These symbols are defined by the linker script
// extern "C" int _stack_end;
// extern "C" int _global_pointer;
extern "C" 
{
    extern int _stack_end;
    extern int _global_pointer;
    extern int UART_RATE;
    extern int UART_DATA;
}

extern "C" void _start() __attribute__((naked, section(".start")));
void _start()
{
    asm volatile 
    (
        "la sp, _stack_end\n"       // Set stack pointer
        "la gp, _global_pointer\n"  // Set global pointer (safe default)
    );
    
    main();

    // Custom halt instruction (0xFFFFFFFF)
    asm(".word 0xFFFFFFFF");
}

void uart_init(int baud);
void uart_sendchar(int c);
int uart_getchar();

int main()
{
    uart_init(1000);
    int a, b, c, chr;
    a = 25;
    b = 4;
    c = a << b;

    // uart_sendchar(static_cast<int>('I'));
    // uart_sendchar(static_cast<int>('V'));
    // uart_sendchar(static_cast<int>('M'));
    // uart_sendchar(static_cast<int>('_'));
    // uart_sendchar(static_cast<int>('S'));
    // uart_sendchar(static_cast<int>('o'));
    // uart_sendchar(static_cast<int>('C'));
    // uart_sendchar(static_cast<int>('_'));
    // uart_sendchar(static_cast<int>('V'));
    uart_sendchar(static_cast<int>('?'));
    asm volatile ("nop"); // Why does it need a NOP padded?
    chr = uart_getchar(); // BOZO Needs fix

    return 0;
}

void uart_init(int baud)
{
    // Setting up the UART
    // Baud Rate first.
    *(volatile int*)&UART_RATE = baud;
}

void uart_sendchar(int c)
{
    // Read the Baud Rate first.
    int get_baud = *(volatile int*)&UART_RATE;
    // Send the Character
    *(volatile int*)&UART_DATA = c;
    // Wait Loop
    for (int j = 0; j < 1; j++)
    {
        for (int i = 0; i < get_baud; i++);
    }
}

int uart_getchar()
{    
    // asm volatile ("nop");
    int c = *(volatile int*)&UART_DATA;
    return c;
}