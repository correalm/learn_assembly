.section .text
.globl _start
_start:
  movq $0b1101, %rdi ; 8 + 4 + 0 + 1 = 13!
  movq $60, %rax
  syscall
