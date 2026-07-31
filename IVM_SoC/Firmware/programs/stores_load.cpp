extern "C" int main();
extern "C" void uart_init(int baud);
extern "C" void uart_sendchar(char c);
extern "C" char uart_getchar();
extern "C" void uart_sendstring(const char* str);

// These symbols are defined by the linker script
// extern "C" int _stack_end;
// extern "C" int _global_pointer;
extern "C" 
{
    extern int _stack_end;
    extern int _global_pointer;
    extern int UART_RATE;
    extern char UART_DATA;
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

int main()
{
    uart_init(1000);
    int result;
    result = 0;
    uart_sendchar('?');
    asm volatile ("nop");
    char rcv = uart_getchar();
    uart_sendchar(rcv);
    result = 47;
    return 0;
}

void uart_init(int baud)
{
    // Setting up the UART's Baud Rate
    *(volatile int*)&UART_RATE = baud;
}

void uart_sendchar(char c)
{
    // Read the Baud Rate first.
    int get_baud = *(volatile int*)&UART_RATE;
    // Send the Character
    *(volatile char*)&UART_DATA = c;
    // Wait Loop
    for (int j = 0; j < 1; j++)
    {
        for (int i = 0; i < get_baud; i++);
    }
}

void uart_sendstring(const char* str)
{
    while (*str != '\0') {
        uart_sendchar(*str);
        str++;
    }
}

char uart_getchar()
{    
    // asm volatile ("nop");
    char c = *(volatile char*)&UART_DATA;
    return c;
}
