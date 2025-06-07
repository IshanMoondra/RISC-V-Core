/*
#include <iostream>
using namespace std;
*/
int main()
{
int a, b, sum, diff;
a = 10;
b = 15;
// Addition
sum = a + b;
// Subtraction
diff = b - a;

// Custom Halt Instruction
__asm__ volatile (".word 0xFFFFFFFF");

return 0;
}
