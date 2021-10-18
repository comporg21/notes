.section .bss
.comm arr, 2

.section .text
.globl _start

# for read() or write()
# %rax should contain a number of the syscall
#       read() is 0 in linux. 0x2000003 in macos.
# %rdi should contain a file descriptor.
#       stdin is 0, and stdout is 1
# %rsi shoud contain a buffer address (where to write the input, or where from output to console)
# %rdx should contain length of the buffer in bytes.


_start:
                                      # read syscall num is 0x2000003 for macos
      mov $0, %rax                    # syscall num and is 0 for linux
      mov $0, %rdi                    # stdin
      mov $arr, %rsi                  # buffer adr
      mov $2, %rdx                    # number of bytes
      syscall

      mov     $1, %rax                # system call for write
      mov     $1, %rdi                # file handle for stdout
      mov     $arr, %rsi              # address of string to output
      mov     $2, %rdx                # number of bytes
      syscall

      mov     $60, %rax               # system call 60 is exit
      movb  (arr,1), %dil             # return code
      syscall
