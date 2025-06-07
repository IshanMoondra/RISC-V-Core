using namespace std;

int main() {

int a, b, c, d, e;
a = 10;
b = 15;
c = a + b;
d = a - b;
e = b - c;

// Custom halt instruction (0xFFFFFFFF)
asm(".word 0xFFFFFFFF");

return 0;
}


