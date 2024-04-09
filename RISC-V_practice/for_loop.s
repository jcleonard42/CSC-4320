.data
say1:     .string "\n"
.text
.globl _start

_start:
    li  t0, 10         # counter = 10

loop:
    mv a0, t0
    li a7, 1
    ecall              # print the number

    li a0, 4
    la a1, say1
    li a2, 13             # this section prints newlines
    li a7, 64
    ecall

    li  t1, 1          
    sub t0, t0, t1     # Decrement the counter

    bnez t0, loop      # jump back to loop if counter > 0

end_loop:
    # exit program
    li a0, 10
    li a7, 10         
    ecall              
