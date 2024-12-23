.globl _start

.section .data

number:
  .quad 4

exit_value:
  .quad 60

.section .text
_start:
  # move the address value of exit_value to rbx
  movq $exit_value, %rbx
  movq $number, %rcx

  # access the value hold on the address of rcx
  movq (%rcx), %rdi
  movq (%rbx), %rax
  syscall
