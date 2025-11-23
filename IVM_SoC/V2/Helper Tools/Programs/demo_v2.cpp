#include "soc_mmio.h"
#include "spi_compute.h"
#include "spi_uart.h"
using namespace std;

int main()
{
    soc_boot();
    asm volatile ("nop");
    compute();
    return 0;
}