.data
    num1:   .word 4     
    num2:   .word 2     
    num3:   .word 9      
    result: .word 0      # Memory address to store result

.text
.globl _start

_start:
    # load numbers from memory
    lw  t0, num1    # load num1 in t0
    lw  t1, num2    # load num2 in t1
    lw  t2, num3    # load num3 in t2

    # multiply numbers
    mul t3, t0, t1  # num1(t0) * num2(t1) = t3
    mul t3, t3, t2  # t3 * num3(t2) = t3

    # store result in memory
    la  t4, result  
    sw  t3, 0(t4)   

    # exit program
    li a0, 10
    li a7, 10
    ecall           
