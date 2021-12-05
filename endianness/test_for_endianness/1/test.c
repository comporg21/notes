#include <stdio.h>

union u
{
short a;
char b;
}un;

int main(void)
{
un.a = 0xabcd;
if(un.b == 0xab)
printf("\n The system is big-endian\n");
else
printf("\n The system is little-endian\n");

return 0;
}
