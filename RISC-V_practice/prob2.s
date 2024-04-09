# Load numbers from memory
    li  t0, 5    # Load num1 to register t0
    li  t1, 7    # Load num2 to register t1
    li  t2, 7    # Load num3 to register t2

    # Multiply numbers
    mul t3, t0, t1  # Multiply num1 and num2, store result in t3
    mul t3, t3, t2  # Multiply the result with num3, store result in t3

    # Store result in memory
    sw  t3, t4  # Store the result in memory address

    # End of program
    li  a7, 10      # Load immediate 10 (exit syscall number)
    ecall           # Exit program