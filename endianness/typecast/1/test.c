#include <stdio.h>

int main()
{
// In the case of 64 bit compilers, long long is the same size as long. They are both 8 bytes.
  unsigned long long x = 0x0000000000000042;
  unsigned long long * x_p = &x;
  unsigned int * y_p = (unsigned int *)x_p;
  unsigned int y = *y_p;
  printf("y = %#.8x\n", y); // prints in hex with '0x' and with all leading zeros
  return 0;
}
