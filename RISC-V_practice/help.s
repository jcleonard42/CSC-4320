.text
.globl _start

_start:
    li  t0, 1          # Initialize counter with 1

loop:
    mv  a0, t0         # Move current value of counter to a0 (argument register)
    li  a7, 1          # Set syscall number for printing integer (1)
    ecall              # Invoke syscall to print integer

    li  a0, 0xA        # Load '\n' (newline character)
    li  a7, 11         # Set syscall number for printing character (11)
    ecall              # Invoke syscall to print character

    # Increment the counter
    addi t0, t0, 1     

    # Check if the counter reached 11
    li   t1, 11
    bge  t0, t1, end_loop   # If counter >= 11, exit loop

    j loop             # Jump back to loop

end_loop:
    # Exit program
    li   a0, 10        # Load exit code 10
    li   a7, 10        # Set syscall number for exit (10)
    ecall              # Invoke syscall to exit program
