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
    // *(volatile int*)0x20000000 = result;

    // Custom halt instruction (0xFFFFFFFF)
    asm(".word 0xFFFFFFFF");
}

int add(int a1, int b1)
{   
    int c1; 
    c1 = a1 + b1;
    return (c1);
}

int main()
{
    int res;
    res = add(12, 15);
    return res;
}
