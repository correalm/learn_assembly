.globl _start

.section .text

_start:
    movq $6, %rdi
    movq $3, %rax
    mulq %rdi

    movq %rax, %rdi
    movq $18, %rax
    divq %rdi

    # set the result value to rdi (print on syscall)
    movq %rax, %rdi

    # set exit system call number
    movq $60, %rax

    syscall
