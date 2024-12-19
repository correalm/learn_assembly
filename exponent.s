.globl _start

.section .text
_start:
  # base
  movq $2, %rbx

  #exponent
  movq $3, %rcx

  movq $1, %rax

mainloop:
  # if exponent is zero, we are done
  jz complete

  mulq %rbx
  decq %rcx

  jmp mainloop

complete:
  movq %rax, %rdi
  movq $60, %rax
  syscall
  
