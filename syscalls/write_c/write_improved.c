#include <unistd.h> // for write
#include <string.h> // for strcpy

int main()
{
// char str[15];
// strcpy(str, "Hello, world\n");
 write(1, "Hello, world\n", 13);
 return 0;

}
