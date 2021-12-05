#include <stdio.h>
 
int main(void)
{
 unsigned int value = 0x11223344;
 char *r = (char *) &value;
 int i;
 
 for(i=0; i<4; i++) {
 printf("Address of 0x%x = %d \n", r[i], &r[i]);
 }
 return 0;
}

