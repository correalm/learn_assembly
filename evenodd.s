.section .text
.globl _start

_start:
  movq $3, %rax
  movq $2, %rbx

  movq $0, %rdx

  divq %rbx
  
  movq %rdx, %rdi
  cmpq $0, %rdx

  je even
  jne odd

even:
  movq $1, %rdi
  jmp complete

odd:
  movq $0, %rdi
  jmp complete

complete:
  movq $60, %rax
  syscall
