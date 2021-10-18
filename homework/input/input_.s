.section .bss
.comm s, 4

.section .text
.globl _start

start:
      mov $0, %rdi   # stdin
      mov  s, %rsi   # buffer adr
      mov $2, %rdx   # number of bytes
      mov $0, %rax   # syscall num
      syscall

      mov     $60, %rax               # system call 60 is exit
      mov     $0, %rdi                # return code 0
      syscall
