.data
say1:     .string "\n"
.text
.globl _start

_start:
    li  t0, 10         # counter = 10
    mv  a0, t0         # move current t0 to a0
    li  a7, 11          
    ecall              # print the number

    li a0 1

