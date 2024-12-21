.globl _start

.section .data
first_value:
  .quad 4
second_value:
  .quad 6
result:
  .quad 0

.section .text
_start:
  movq first_value, %rbx
  movq second_value, %rcx

  addq %rbx, %rcx

  movq %rcx, result

  movq $60, %rax
  movq result, %rdi
  syscall
