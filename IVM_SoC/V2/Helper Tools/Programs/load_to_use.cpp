using namespace std;

int main () {
int x = 10;
int y = 15;
x = x + y;

// Custom Halt Instruction
asm(".word 0xFFFFFFFF");

return 0;
}

