extern "C" void _start() 
{
    extern main();
    // Custom halt instruction (0xFFFFFFFF)
    asm(".word 0xFFFFFFFF");
}
