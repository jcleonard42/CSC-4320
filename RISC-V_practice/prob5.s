.data
helloworld:     .string "Hello World!\n"

.text
.globl _start

_start:
    li a0, 4
    la a1, helloworld
    li a2, 13
    li a7, 64
    ecall

    li a0, 10
    li a7, 10
    ecall
    