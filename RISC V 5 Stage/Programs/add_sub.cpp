/*
#include <iostream>
using namespace std;
*/
int main()
{
int a, b, sum, diff1, diff2;
a = 10;
b = 15;
// Addition
sum = a + b;
// Subtraction
diff1 = b - a;
diff2 = a - b;

// Custom Halt Instruction
__asm__ volatile (".word 0xFFFFFFFF");

return 0;
}
