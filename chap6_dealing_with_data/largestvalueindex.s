.globl _start

.section .data
counter:
  .quad 7
numbers:
  .quad 1, 2, 5, 8, 0, 10, 2
  
.section .text
_start:
  movq counter, %rcx
  movq $0, %rbx
  movq $0, %rdi

  cmp $0, %rcx
  je endloop

main:
  movq numbers(, %rbx, 8), %rax

  cmp %rdi, %rax
  jbe loopcontrol

  movq %rax, %rdi

loopcontrol:
  # move %rbx to the next index
  incq %rbx

  loopq main

endloop:
  movq $60, %rax
  syscall
