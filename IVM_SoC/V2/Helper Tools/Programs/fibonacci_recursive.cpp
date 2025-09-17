extern "C" int main();

// These symbols are defined by the linker script
extern "C" int _stack_end;
extern "C" int _global_pointer;

extern "C" void _start() __attribute__((naked, section(".start")));

extern "C" void _start() {
    asm volatile (
        "la sp, _stack_end\n"       // Set stack pointer
        "la gp, _global_pointer\n"  // Set global pointer (safe default)
    );

    int result = main();

    // Optional: write result to memory or MMIO for debug
    // *(volatile int*)0x00001000 = result;

    // Custom halt instruction (0xFFFFFFFF)
    asm(".word 0xFFFFFFFF");
}

int fibonacci(long long n)
{
    if (n <= 1)
    {
        return n;
    }        

    return (fibonacci(n-1) + fibonacci(n-2));
}

int main()
{
    long long fib_final = 0;
    fib_final = fibonacci(20);
    return 0;
}
