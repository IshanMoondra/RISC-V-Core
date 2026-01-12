#include <stdio.h>
#include "svdpi.h"  // Vivado provides this header

// Function name must match the SV import
void hello_world()
{
    vpi_printf("Hello World from DPI-C\n");
}
