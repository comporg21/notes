        .global main

        .text
main:
        push    %r12                    # save callee-save registers
        push    %r13
        push    %r14
        # By pushing 3 registers our stack is already aligned for calls

        cmp     $3, %rdi                # must have exactly two arguments
        jne     error1

        mov     %rsi, %r12              # argv

# We will use ecx to count down form the exponent to zero, esi to hold the
# value of the base, and eax to hold the running product.

        mov     16(%r12), %rdi          # argv[2]
        call    atoi                    # y in eax
        cmp     $0, %eax                # disallow negative exponents
        jl      error2
        mov     %eax, %r13d             # y in r13d

        mov     8(%r12), %rdi           # argv
        call    atoi                    # x in eax
        mov     %eax, %r14d             # x in r14d







error1:                                 # print error message
        mov     $badArgumentCount, %edi
        call    puts
        jmp     done
error2:                                 # print error message
        mov     $negativeExponent, %edi
        call    puts
done:                                   # restore saved registers
        pop     %r14
        pop     %r13
        pop     %r12
        ret

answer:
        .asciz  "%d\n"
badArgumentCount:
        .asciz  "Requires exactly two arguments\n"
negativeExponent:
        .asciz  "The exponent may not be negative\n"
