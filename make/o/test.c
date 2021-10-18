/* voc 2.1.0 [2020/10/25] for gcc LP64 on gentoo xtspam */

#define SHORTINT INT8
#define INTEGER  INT16
#define LONGINT  INT32
#define SET      UINT32

#include "SYSTEM.h"
#include "Out.h"
#include "math.h"


static INT16 test_i, test_j, test_k;





export int main(int argc, char **argv)
{
	__INIT(argc, argv);
	__MODULE_IMPORT(Out);
	__MODULE_IMPORT(math);
	__REGMAIN("test", 0);
/* BEGIN */
	test_i = 40;
	test_j = 2;
	test_k = math_add(test_i, test_j);
	Out_Int(test_k, 0);
	Out_Ln();
	__FINI;
}
