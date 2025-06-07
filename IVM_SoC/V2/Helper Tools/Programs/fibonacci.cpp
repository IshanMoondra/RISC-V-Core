using namespace std;

int main ()
{
    int count, sum, a, b;
    a = 1;
    b = 0;
    
    // Fibonnaci Loop
    while (count < 16)
    {
        sum = a + b;
        b = a;
        a = sum;
        count++;
    }

    // Custom Halt Instruction
    asm(".word 0xFFFFFFFF");
}