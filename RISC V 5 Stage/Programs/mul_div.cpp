// A simple program to see how the compiler handles multiplies & divides.
int main()
{
int a = 43, b = 7, product = 0, remainder = 0, quotient = 0;

product = a * b;
quotient = a / b;
remainder = a % b;

// Custom Halt Instruction
__asm__ volatile (".word 0xFFFFFFFF");

return 0;
}
