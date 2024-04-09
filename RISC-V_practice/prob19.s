.data
say1:     .string "1\n"
say2:     .string "2\n"
say3:     .string "3\n"
say4:     .string "4\n"
say5:     .string "5\n"
say6:     .string "6\n"
say7:     .string "7\n"
say8:     .string "8\n"
say9:     .string "9\n"
say10:     .string "10\n"

.text
.globl _start

_start:
    li a0, 4
    la a1, say1
    li a2, 13
    li a7, 64
    ecall

    li a0, 4
    la a1, say2
    li a2, 13
    li a7, 64
    ecall

    li a0, 4
    la a1, say3
    li a2, 13
    li a7, 64
    ecall

    li a0, 4
    la a1, say4
    li a2, 13
    li a7, 64
    ecall

    li a0, 4
    la a1, say5
    li a2, 13
    li a7, 64
    ecall

    li a0, 4
    la a1, say6
    li a2, 13
    li a7, 64
    ecall

    li a0, 4
    la a1, say7
    li a2, 13
    li a7, 64
    ecall

    li a0, 4
    la a1, say8
    li a2, 13
    li a7, 64
    ecall

    li a0, 4
    la a1, say9
    li a2, 13
    li a7, 64
    ecall

    li a0, 4
    la a1, say10
    li a2, 13
    li a7, 64
    ecall

    li a0, 10
    li a7, 10
    ecall