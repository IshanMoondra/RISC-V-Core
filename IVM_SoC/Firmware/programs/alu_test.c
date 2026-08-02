using namespace std;

int main() {

int a, b, c, d, e, f, g, h, i , j;
a = 64;
b = 2;
// Basic addition
c = a + b;
// Subtraction
d = a - b;
// Negative result
e = b - c;
// Shifts
f = a >> b;
g = a << b;
h = b << 30;
// Logicals
i = a ^ b;
j = e > b; 

// Custom halt instruction (0xFFFFFFFF)
asm(".word 0xFFFFFFFF");

return 0;
}


