.globl _start

.section .data
counter:
  .quad 7
numbers:
  .quad 1, 4, 6, 8, 1, 90, 100

.section .text
_start:
  movq counter, %rcx
  movq $0, %rdi

  cmp $0, %rcx
  je endloop

main:
  # indexed mode, BASEREG is left out
  # this multiplies rcx to 8. This way he points to the last element
  movq numbers-8(, %rcx, 8), %rax

  cmp %rdi, %rax

  jbe loopcontrol

  movq %rax, %rdi

loopcontrol:
  loopq main

endloop:
  movq $60, %rax
  syscall
