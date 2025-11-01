extern "C" int main();

// These symbols are defined by the linker script
extern "C" int _stack_end;
extern "C" int _global_pointer;

extern "C" void _start() __attribute__((naked, section(".start")));

extern "C" void _start() {
    // asm volatile (
    //     "auipc	sp,0x1800\n"
    //     "nop\n"
    //     "nop\n"
    //     "nop\n"        
    // );
    asm volatile
        (
            "nop\n"
            "la sp, _stack_end\n"       // Set stack pointer
            "la gp, _global_pointer\n"  // Set global pointer (safe default)
        );

    int result = main();
    // Custom halt instruction (0xFFFFFFFF)
    asm(".word 0xFFFFFFFF");
}

int main()
{
    int a, b, c;
    a = 10;
    b = 15;
    c = a + b;
    return 0;
}