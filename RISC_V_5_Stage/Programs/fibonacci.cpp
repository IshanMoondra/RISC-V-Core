// A simple Fibonacci Series to test Loops
int main()
{
int a = 0, b = 1, sum = 0;
int loop;

for (loop = 0; loop < 1000; loop++)
{
sum = a + b;
a = b;
b = sum;
}

// Custom Halt Instruction
__asm__ volatile (".word 0xFFFFFFFF");

return 0;
}
