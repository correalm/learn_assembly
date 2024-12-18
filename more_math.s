.globl _start

.section .text

_start:
  movw $4, %bx
  movw %bx, %ax
  mulw %bx
  mulw %bx

  movw %ax, %bx
  movw $8, %ax
  divw %bx

  # rax wil store the 0, rdx will store the rest that is what i want
  movq %rdx, %rdi

  movq $60, %rax
  syscall
