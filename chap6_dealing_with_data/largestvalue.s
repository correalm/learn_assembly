.globl _start

.section .data
size_of_quad:
  .quad 8

counter:
  .quad 8
numbers:
  .quad 5, 20, 33, 60, 52, 80, 9, 1

.section .text
_start:
  # direct addressing mode
  movq counter, %rcx

  # indirect addressing mode
  # put the address of numbers on rbx
  movq $numbers, %rbx
  # can be: leaq numbers, %rbx -> load effective address

  movq $0, %rdi

  cmp $0, %rcx
  je endloop

mainloop:
  # access the content on %rbx address
  movq (%rbx), %rax

  # if is not bigger, go to end
  cmp %rdi, %rax
  jbe loopcontrol

  movq %rax, %rdi

loopcontrol:
  # quad word are 8 bits size
  # this way i go to the next element
  addq $8, %rbx

  # decrement %rcx and keep going
  loopq mainloop

endloop:
  movq $60, %rax
  syscall
