.section .bss
.comm arr, 2

.section .text
.globl _start

_start:
      mov $0, %rdi   # stdin
      mov arr, %rsi   # buffer adr
      mov $2, %rdx   # number of bytes
      #0x2000003 for macos
      mov $0, %rax   # syscall num
      syscall

      mov     $60, %rax               # system call 60 is exit
      mov     (arr), %rdi                # return code
      syscall
