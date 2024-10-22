# directive: instrucion to assembler
.globl _start

.section .text

# label: defines the value of _start symbol
# label the symbol _start with and memory address
_start:
    movq $60, %rax
    movq $3, %rdi
    syscall

# movq => move quadword (64 bits = 8bytes) value
# rax => register (CPU memory, out RAM)
# rdi => holds the exit status of program. 60 on rax meaning a system call to exit => only stores the system call, dont call.
# Perform the system call with syscall instruction
