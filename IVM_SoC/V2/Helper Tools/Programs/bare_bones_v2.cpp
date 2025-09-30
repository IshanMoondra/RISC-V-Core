extern "C" int main();

// These symbols are defined by the linker script
extern "C" int _stack_end;
extern "C" int _global_pointer;

extern "C" void _start() __attribute__((naked, section(".start")));

extern "C" void _start() {
    asm volatile (
        "nop\n"
        "la sp, _stack_end\n"       // Set stack pointer
        "la gp, _global_pointer\n"  // Set global pointer (safe default)
    );

    int result = main();

    // Custom halt instruction (0xFFFFFFFF)
    asm(".word 0xFFFFFFFF");
}

extern "C" int main() 
{
    int a = 1;
    int b = 0;
    int c = 0;
    char i = 0;
    int test;

    asm volatile ("loop_start:");
    for (i = 1; i < 10; i++) 
    {
        c = a + b;
        b = a;
        a = c;
    }
    asm volatile ("loop_end:");
    test = 47;
    return c;
}
