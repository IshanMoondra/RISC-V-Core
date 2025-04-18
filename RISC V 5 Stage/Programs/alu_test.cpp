/*
#include <iostream>
using namespace std;
*/
int main()
{
// Program to test out the entire ALU part by part. 
// First up Signed numbers
int a, b, sum, diff1, diff2;
a = 10;
b = 15;
// Addition
sum = a + b;
// Subtraction
// Testing Positive Difference
diff1 = b - a;
// Testing Negative Difference
diff2 = a - b + 3;

// Unsigned numbers
unsigned int au, bu, su, d1u, d2u;
au = static_cast<unsigned int>(a);
bu = static_cast<unsigned int>(b);
// Addition
su = au + bu;
// Difference
d1u = bu - au + 3;
d2u = au - bu;

// Logical Stuff
unsigned int l1, l2, nand, nor, inv, and0, or0, xor0, xnor;
l1 = 0x10;
l2 = 0x8;

nand 	= ~(l1 & l2);
nor 	= ~(l1 | l2);
inv 	= ~l1;
and0	= l1 & l2;
or0	= l1 | l2;
xor0	= l1 ^ l2;
xnor	= ~(l1 ^ l2);

// Compare Ops
bool t1, t2;
t1 = (a < b);
t2 = (d2u > d1u);

// Shifter Ops
int shamt, amt, res1, res2;
shamt = 3;
amt = -2;
res1 = amt >> shamt;
res2 = static_cast<unsigned int>(amt) >> shamt;

// Custom Halt Instruction
__asm__ volatile (".word 0xFFFFFFFF");

return 0;
}
