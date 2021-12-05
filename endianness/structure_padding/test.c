#include<stdio.h>

struct st
{
char c;
int a;
}obj;

int main(void)
{
printf("\n Size of structure is [%lu]\n", sizeof (struct st));

return 0;
}
