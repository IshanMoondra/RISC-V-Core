using namespace std;

int main()
{
    int i = 0;
    int test = 0;
    while (i < 10)
    {
        if (i == 5)
        {
            test = 1;
            break;
        }
        i++;
    }

    // Custom halt instruction (0xFFFFFFFF)
    asm(".word 0xFFFFFFFF");

    return 0;
}