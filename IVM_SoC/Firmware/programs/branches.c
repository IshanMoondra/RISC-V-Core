using namespace std;

int main()
{
    int a, b, c;
    a = -12;
    b = 40;
    c = 0;

    if (a > b)
        c = a + b;
    else
        c = 1;
    
    if (b > a)
        c = b + a;
    else
        c = 0;

    // Custom halt instruction (0xFFFFFFFF)
    asm(".word 0xFFFFFFFF");

    return 0;

}