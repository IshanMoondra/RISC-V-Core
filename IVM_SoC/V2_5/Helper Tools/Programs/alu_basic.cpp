using namespace std;

int main()
{
    int x = 0;
    x = 16;
    x = x + 2;
    
    // Custom halt instruction (0xFFFFFFFF)
    asm(".word 0xFFFFFFFF");

    // What happens if I don't add return 0?
}