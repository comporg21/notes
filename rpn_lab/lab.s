#              i := (j + 5) - (i + 7)
#              (j + 5) - (i + 7)
.section .bss

.lcomm i, 4
.lcomm j, 4

.section .text

.globl _start
_start:

		movl $23, i
		movl $42, j
		pushl j
		pushl $5
		pushl i
		pushl $7
		popl  %eax 
		addl  %eax, (%esp)

		movl (%esp), %ebx
		movl $1,     %eax
		int $0x80

