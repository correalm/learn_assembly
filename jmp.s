.globl _start

.section .text
_start:
  movq $7, %rdi
  jmp nextplace

  movq $8, %rdx
  addq %rbx, %rdi

nextplace:
  movq $60, %rax
  syscall
