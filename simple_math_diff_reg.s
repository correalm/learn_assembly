.globl _start

.section .text

_start:
  movw $3, %bx
  movw $3, %ax
  mulw %bx

  # since mul operations will store the result on "(r)a(x)" register
  # i can access and use only the word
  movw %ax, %di

  movq $60, %rax
  syscall
