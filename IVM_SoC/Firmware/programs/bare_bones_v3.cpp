extern "C" int main();
extern "C" void _start() 
{
    // extern main()
    int result = main();
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
