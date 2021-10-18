.section .bss
.comm arr, 2

.section .text
.globl _start

_start:
      mov $0, %rdi   # stdin
      mov $arr, %rsi   # buffer adr
      #mov %rsp, %rsi   # buffer adr
      mov $2, %rdx   # number of bytes
      #0x2000003 for macos
      mov $0, %rax   # syscall num
      syscall

      mov     $1, %rax                # system call 1 is write
      mov     $1, %rdi                # file handle 1 is stdout
      mov     $arr, %rsi              # address of string to output
      #mov      %rsp, %rsi
      mov     $2, %rdx               # number of bytes
      syscall

      mov     $60, %rax               # system call 60 is exit
      #movb  (%rsi), %dil            # return code
      movb  (arr,1), %dil            # return code
      syscall
