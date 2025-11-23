using namespace std;

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

int main ()
{
    int sum, a, b;
    a = 1;
    b = 0;

    // Fibonnaci Loop
    for (char count = 1; count < 10; count++)
    {
        sum = a + b;
        b = a;
        a = sum;
    }

    // Custom Halt Instruction
    // asm(".word 0xFFFFFFFF");
}
