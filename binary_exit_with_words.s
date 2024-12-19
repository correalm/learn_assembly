.section .text
.globl _start
_start:
  movl $0b1010, %ebx ; movl will move the "long" register (32 bytes => double word)
  movq %rbx, %rdi

  movq $60, %rax
  syscall
