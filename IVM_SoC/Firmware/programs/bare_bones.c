extern "C" void _start() 
{
    int i = 0;
    int test = 0;

    while (i < 10) {
        i++;
    }

    test = 47;
    // Custom halt instruction (0xFFFFFFFF)
    asm(".word 0xFFFFFFFF");
}
