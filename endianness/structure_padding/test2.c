#include<stdio.h>

struct st
{
char c;
int a;
}obj;

int main(void)
{
printf("\n Address of 'c' is [%lu] \n", (long unsigned) &obj.c);
printf("\n Address of 'a' is [%lu] \n", (long unsigned) &obj.a);
printf("\n Size of structure is [%lu]\n", sizeof (struct st));

return 0;
}
