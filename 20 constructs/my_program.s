.file	"my_program.c"         

.text                       

.def	scanf	.scl	3	.type	32	.endef  
.seh_proc	scanf                
scanf:
    pushq	%rbp               # Save the base pointer
    .seh_pushreg	%rbp      
    pushq	%rbx               # Save rbx register
    .seh_pushreg	%rbx       
    subq	$56, %rsp          # Allocate 56 bytes on  stack for local variables
    .seh_stackalloc	56         
    leaq	48(%rsp), %rbp     # Set up  base pointer to 48 bytes from the stack pointer
    .seh_setframe	%rbp, 48   
    .seh_endprologue        
    movq	%rcx, 32(%rbp)     # Store first argument (rcx) in a local variable
    movq	%rdx, 40(%rbp)     # Store second argument (rdx) in a local variable
    movq	%r8, 48(%rbp)      # Store third argument (r8) in a local variable
    movq	%r9, 56(%rbp)      # Store fourth argument (r9) in a local variable
    leaq	40(%rbp), %rax     # Load  address of a local variable into rax
    movq	%rax, -16(%rbp)    # Store  address in another local variable
    movq	-16(%rbp), %rbx    # Load  stored address into rbx
    movl	$0, %ecx           # Set ecx to 0
    movq	__imp___acrt_iob_func(%rip), %rax  
    call	*%rax              
    movq	%rax, %rcx         # Move result into rcx
    movq	32(%rbp), %rax     # Load stored argument from local variable
    movq	%rbx, %r8          # Move rbx into r8 for argument passing
    movq	%rax, %rdx         # Move rax into rdx for argument passing
    call	__mingw_vfscanf    
    movl	%eax, -4(%rbp)     # Store return value in a local variable
    movl	-4(%rbp), %eax     # Move return value back into eax
    addq	$56, %rsp          # Deallocate stack space
    popq	%rbx               # Restore rbx register
    popq	%rbp               # Restore base pointer
    ret                        # Return from function
.seh_endproc                   


.def	fprintf	.scl	3	.type	32	.endef
.seh_proc	fprintf            
fprintf:
    pushq	%rbp               # Save base pointer
    .seh_pushreg	%rbp       # Record base pointer in SEH
    movq	%rsp, %rbp         # Set new base pointer
    .seh_setframe	%rbp, 0    # Record base pointer frame in SEH
    subq	$48, %rsp          # Allocate 48 bytes on the stack
    .seh_stackalloc	48         
    .seh_endprologue         
    movq	%rcx, 16(%rbp)     # Store first argument (rcx) in a local variable
    movq	%rdx, 24(%rbp)     # Store second argument (rdx) in a local variable
    movq	%r8, 32(%rbp)      # Store third argument (r8) in a local variable
    movq	%r9, 40(%rbp)      # Store fourth argument (r9) in a local variable
    leaq	32(%rbp), %rax     # Load address of a local variable into rax
    movq	%rax, -16(%rbp)    # Store address in another local variable
    movq	-16(%rbp), %rcx    # Load stored address into rcx
    movq	24(%rbp), %rdx     # Load second argument back into rdx
    movq	16(%rbp), %rax     # Load first argument back into rax
    movq	%rcx, %r8          # Move rcx into r8 for argument passing
    movq	%rax, %rcx         # Move rax into rcx for argument passing
    call	__mingw_vfprintf   
    movl	%eax, -4(%rbp)     # Store return value in a local variable
    movl	-4(%rbp), %eax     # Move return value back into eax
    addq	$48, %rsp          # Deallocate  stack space
    popq	%rbp               # Restore base pointer
    ret                        # Return from the function
.seh_endproc                


.def	printf	.scl	3	.type	32	.endef
.seh_proc	printf            
printf:
    pushq	%rbp               # Save base pointer
    .seh_pushreg	%rbp      
    pushq	%rbx               # Save rbx register
    .seh_pushreg	%rbx       # Record rbx in SEH
    subq	$56, %rsp          # Allocate 56 bytes on the stack
    .seh_stackalloc	56         
    leaq	48(%rsp), %rbp     # Set up base pointer
    .seh_setframe	%rbp, 48   
    .seh_endprologue         
    movq	%rcx, 32(%rbp)     # Store first argument (rcx) in a local variable
    movq	%rdx, 40(%rbp)     # Store second argument (rdx) in a local variable
    movq	%r8, 48(%rbp)      # Store third argument (r8) in a local variable
    movq	%r9, 56(%rbp)      # Store fourth argument (r9) in a local variable
    leaq	40(%rbp), %rax     # Load address of a local variable into rax
    movq	%rax, -16(%rbp)    # Store address in another local variable
    movq	-16(%rbp), %rbx    # Load stored address into rbx
    movl	$1, %ecx           # Set ecx to 1
    movq	__imp___acrt_iob_func(%rip), %rax
    call	*%rax              
    movq	%rax, %rcx         # Move result into rcx
    movq	32(%rbp), %rax     # Load stored argument from local variable
    movq	%rbx, %r8          # Move rbx into r8 for argument passing
    movq	%rax, %rdx         # Move rax into rdx for argument passing
    call	__mingw_vfprintf   # Call printf implementation (vfprintf)
    movl	%eax, -4(%rbp)     # Store return value in a local variable
    movl	-4(%rbp), %eax     # Move return value back into eax
    addq	$56, %rsp          # Deallocate stack space
    popq	%rbx               # Restore rbx register
    popq	%rbp               # Restore base pointer
    ret                        # Return from the function
.seh_endproc                
	.def	__main	.scl	2	.type	32	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Original array:\12\0"
	.align 8
.LC1:
	.ascii "Array: {64, 34, 25, 12, 22, 11, 90}\12\0"
.LC2:
	.ascii "Choose a sorting algorithm:\12\0"
.LC3:
	.ascii "1. Quick Sort\12\0"
.LC4:
	.ascii "2. Insertion Sort\12\0"
.LC5:
	.ascii "Enter your choice (1-2): \0"
.LC6:
	.ascii "%d\0"
.LC7:
	.ascii "Quick Sort\0"
.LC8:
	.ascii "Insertion Sort\0"
.LC9:
	.ascii "Invalid choice.\12\0"
.LC10:
	.ascii "Sorted array:\12\0"
.text
.globl	main                     
.def	main	.scl	2	.type	32	.endef
.seh_proc	main                 
main:
    pushq	%rbp                  # Save base pointer
    .seh_pushreg	%rbp           
    movq	%rsp, %rbp            # Set new base pointer
    .seh_setframe	%rbp, 0        
    subq	$96, %rsp             # Allocate 96 bytes on the stack
    .seh_stackalloc	96           
    .seh_endprologue            
    call	__main              
    movl	$64, -48(%rbp)        # Initialize  array with first element 64
    movl	$34, -44(%rbp)        # Initialize array with second element 34
    movl	$25, -40(%rbp)        # Initialize array with third element 25
    movl	$12, -36(%rbp)        # Initialize array with fourth element 12
    movl	$22, -32(%rbp)        # Initialize array with fifth element 22
    movl	$11, -28(%rbp)        # Initialize array with sixth element 11
    movl	$90, -24(%rbp)        # Initialize array with seventh element 90
    movl	$7, -4(%rbp)          # Set number of elements in array to 7
    movl	$0, -56(%rbp)         # Initialize stats (comparisons) to 0
    movl	$0, -52(%rbp)         # Initialize stats (swaps) to 0
    leaq	.LC0(%rip), %rax      # Load Original array: message
    movq	%rax, %rcx            # Move it into rcx for argument passing
    call	printf                # Call printf to print message
    movl	-4(%rbp), %edx        # Load array size into edx
    leaq	-48(%rbp), %rax       # Load address of the array into rax
    movq	%rax, %rcx            # Move array address into rcx
    call	printArray            # Call printArray to print original array
    leaq	.LC1(%rip), %rax      # Load Choose a sorting algorithm: message
    movq	%rax, %rcx            # Move it into rcx for argument passing
    call	printf                # Call printf to print message
    leaq	.LC2(%rip), %rax      # Load 1. Quick Sort message
    movq	%rax, %rcx            # Move it into rcx for argument passing
    call	printf                # Call printf to print option
    leaq	.LC3(%rip), %rax      # Load 2. Insertion Sort message
    movq	%rax, %rcx            # Move it into rcx for argument passing
    call	printf                # Call printf to print the option
    leaq	.LC4(%rip), %rax      # Load Enter your choice message
    movq	%rax, %rcx            # Move it into rcx for argument passing
    call	printf                # Call printf to prompt user input
    leaq	-8(%rbp), %rax        # Load address to store user input
    movq	%rax, %rdx            # Move address into rdx
    leaq	.LC5(%rip), %rax      # Load format string "%d"
    movq	%rax, %rcx            # Move it into rcx for argument passing
    call	scanf                 # Call scanf to get user input
    movl	-8(%rbp), %eax        # Load user input into eax
    cmpl	$1, %eax              # Compare input with 1
    je	.L8                       # Jump to quick sort if input is 1
    cmpl	$2, %eax              # Compare input with 2
    je	.L9                       # Jump to insertion sort if input is 2
    jmp	.L14                      # Jump to invalid choice

.L8:                              # Quick Sort block
    movl	-4(%rbp), %eax        # Load array size into eax
    leal	-1(%rax), %ecx        # Subtract 1 from array size
    leaq	-56(%rbp), %rdx       # Load address for stats into rdx
    leaq	-48(%rbp), %rax       # Load address of the array into rax
    movq	%rdx, %r9             # Move stats address into r9
    movl	%ecx, %r8d            # Move modified size into r8d
    movl	$0, %edx              # Set low index (0) into edx
    movq	%rax, %rcx            # Move array address into rcx
    call	quickSort             # Call quickSort function
    movq	-56(%rbp), %rax       # Load stats into rax
    leaq	.LC6(%rip), %rdx      # Load Quick Sort string
    movq	%rax, %rcx            # Move stats address into rcx
    call	writeStatsToFile      # Call writeStatsToFile
    jmp	.L11                      # Jump to the next block

.L9:                              # Insertion Sort block
    leaq	-56(%rbp), %rcx       # Load stats address into rcx
    movl	-4(%rbp), %edx        # Load array size into edx
    leaq	-48(%rbp), %rax       # Load array address into rax
    movq	%rcx, %r8             # Move stats address into r8
    movq	%rax, %rcx            # Move array address into rcx
    call	insertionSort         # Call insertionSort function
    movq	-56(%rbp), %rax       # Load stats into rax
    leaq	.LC7(%rip), %rdx      # Load Insertion Sort string
    movq	%rax, %rcx            # Move stats address into rcx
    call	writeStatsToFile      # Call writeStatsToFile
    jmp	.L11                      # Jump to the next block

.L14:                             # Invalid choice block
    leaq	.LC8(%rip), %rax      # Load Invalid choice string
    movq	%rax, %rcx            # Move it into rcx
    call	printf                # Call printf to display message
    movl	$0, %eax              # Set return value to 0
    jmp	.L13                      # Jump to the end

.L11:                             # After sorting, print the sorted array
    leaq	.LC9(%rip), %rax      # Load "Sorted array" string
    movq	%rax, %rcx            # Move it into rcx
    call	printf                # Call printf to print message
    movl	-4(%rbp), %edx        # Load array size into edx
    leaq	-48(%rbp), %rax       # Load array address into rax
    movq	%rax, %rcx            # Move array address into rcx
    call	printArray            # Call printArray to print sorted array
    movl	$0, %eax              # Set return value to 0

.L13:                             # Cleanup and return
    addq	$96, %rsp             # Deallocate the stack space
    popq	%rbp                  # Restore base pointer
    ret                           # Return from main
.seh_endproc                     

.globl	insertionSort                
.def	insertionSort	.scl	2	.type	32	.endef
.seh_proc	insertionSort             
insertionSort:
    pushq	%rbp                      # Save base pointer
    .seh_pushreg	%rbp             
    movq	%rsp, %rbp                 # Set base pointer to stack pointer
    .seh_setframe	%rbp, 0               
    subq	$16, %rsp                  # Allocate 16 bytes on stack for local variables
    .seh_stackalloc	16                
    .seh_endprologue                 
    movq	%rcx, 16(%rbp)             # Store array address in local variable
    movl	%edx, 24(%rbp)             # Store array size in local variable
    movq	%r8, 32(%rbp)              # Store stats pointer in local variable
    movl	$1, -4(%rbp)               # Initialize loop variable i to 1

    jmp	.L16                           # Jump to start of loop

.L20:                                  # Loop
    movl	-4(%rbp), %eax             # Load i into eax
    cltq                           
    leaq	0(,%rax,4), %rdx           # Compute array index i * 4 (b/c int array)
    movq	16(%rbp), %rax             # Load array base address
    addq	%rdx, %rax                 # Add index to base address
    movl	(%rax), %eax               # Load arr[i] into eax
    movl	%eax, -12(%rbp)            # Store key = arr[i]
    movl	-4(%rbp), %eax             # Load i into eax
    subl	$1, %eax                   # j = i - 1
    movl	%eax, -8(%rbp)             # Store j

    jmp	.L17                           # inner loop check

.L19:                                  # Inner loop body
    movq	32(%rbp), %rax             # Load stats pointer
    movl	(%rax), %eax               # Load stats->comparisons
    leal	1(%eax), %edx              # comparisons++
    movq	32(%rbp), %rax             # Load stats pointer
    movl	%edx, (%rax)               # Store stats->comparisons
    movl	-8(%rbp), %eax             # Load j into eax
    cltq                            
    leaq	0(,%rax,4), %rdx           # Compute array index j * 4
    movq	16(%rbp), %rax             # Load array base address
    addq	%rdx, %rax                 # Add index to base address
    movl	(%rax), %eax               # Load arr[j] into eax
    movl	%eax, -8(%rbp)             # Store arr[j+1] = arr[j]
    subl	$1, -8(%rbp)               # j--

.L17:                                  # inner loop check
    cmpl	$0, -8(%rbp)               # Compare j with 0
    js	.L18                           # If j < 0, exit loop
    movl	-8(%rbp), %eax             # Load j
    cltq                            
    leaq	0(,%rax,4), %rdx           # Compute array index j * 4
    movq	16(%rbp), %rax             # Load array base address
    addq	%rdx, %rax                 # Add index to base address
    movl	(%rax), %eax               # Load arr[j]
    cmpl	%eax, -12(%rbp)            # Compare arr[j] with key
    jl	.L19                           # If arr[j] > key, continue inner loop

.L18:                                  # Store key in arr[j+1]
    movl	-8(%rbp), %eax             # Load j
    cltq                           
    addq	$1, %rax                   # j + 1
    leaq	0(,%rax,4), %rdx           # Compute arr[j+1]
    movq	16(%rbp), %rax             # Load array base address
    addq	%rax, %rdx                 # Add index to base address
    movl	-12(%rbp), %eax            # Load key
    movl	%eax, (%rdx)               # Store key in arr[j+1]
    addl	$1, -4(%rbp)               # i++

.L16:                                  # Loop check
    movl	-4(%rbp), %eax             # Load i
    cmpl	24(%rbp), %eax             # Compare i with n
    jl	.L20                           # If i < n, continue loop

    nop                              
    addq	$16, %rsp                  # Deallocate stack space
    popq	%rbp                       # Restore base pointer
    ret                                # Return
.seh_endproc                         

.globl	partition                      
.def	partition	.scl	2	.type	32	.endef
.seh_proc	partition                  
partition:
    pushq	%rbp                       # Save base pointer
    .seh_pushreg	%rbp                
    movq	%rsp, %rbp                 # Set base pointer to stack pointer
    .seh_setframe	%rbp, 0              
    subq	$48, %rsp                  # Allocate 48 bytes on stack for local variables
    .seh_stackalloc	48                  
    .seh_endprologue                 
    movq	%rcx, 16(%rbp)             # Store array address in local variable
    movl	%edx, 24(%rbp)             # Store low index in local variable
    movl	%r8d, 32(%rbp)             # Store high index in local variable
    movq	%r9, 40(%rbp)              # Store stats pointer in local variable
    movl	32(%rbp), %eax             # Load arr[high] (pivot)
    cltq                             
    leaq	0(,%rax,4), %rdx           # Compute index high * 4
    movq	16(%rbp), %rax             # Load array base address
    addq	%rdx, %rax                 # Add index to base address
    movl	(%rax), %eax               # Load arr[high] into eax
    movl	%eax, -12(%rbp)            # Store pivot value
    movl	24(%rbp), %eax             # Load low index
    subl	$1, %eax                   # low - 1 (index of smaller element)
    movl	%eax, -4(%rbp)             # Store i (initial value)
    movl	24(%rbp), %eax             # Load low index
    movl	%eax, -8(%rbp)             # Initialize j to low

    jmp	.L22                           # Jump to loop start

.L24:                                  # Loop
    movq	40(%rbp), %rax             # Load stats pointer
    movl	(%rax), %eax               # Load stats->comparisons
    leal	1(%eax), %edx              # comparisons++
    movq	40(%rbp), %rax             # Load stats pointer
    movl	%edx, (%rax)               # Store updated stats->comparisons
    movl	-8(%rbp), %eax             # Load j
    cltq                             
    leaq	0(,%rax,4), %rdx           # Compute array index j * 4
    movq	16(%rbp), %rax             # Load array base address
    addq	%rdx, %rax                 # Add index to base address
    movl	(%rax), %eax               # Load arr[j]
    cmpl	%eax, -12(%rbp)            # Compare arr[j] with pivot
    jle	.L23                           # If arr[j] <= pivot, jump to L23
        addl	$1, -4(%rbp)           # i++
    movl	-8(%rbp), %eax             # Load j into eax
    cltq                             
    leaq	0(,%rax,4), %rdx           # Compute array index j * 4
    movq	16(%rbp), %rax             # Load base address of the array
    addq	%rdx, %rax                 # Add index to base address
    movl	(%rax), %eax               # Load arr[j]
    cmpl	%eax, -12(%rbp)            # Compare arr[j] with pivot
    jle	.L23                           # If arr[j] <= pivot, continue
    addl	$1, -4(%rbp)               # i++

    movl	-4(%rbp), %eax             # Load i into eax
    cltq                           
    leaq	0(,%rax,4), %rcx           # Compute arr[i] index
    movq	16(%rbp), %rax             # Load array base address
    addq	%rax, %rcx                 # Add index to base address
    movq	40(%rbp), %r8              # Load address of stats into r8
    call	swap                       # Call swap to swap arr[i] and arr[j]
.L23:
    addl	$1, -8(%rbp)               # j++

.L22:
    movl	-8(%rbp), %eax             # Load j into eax
    cmpl	32(%rbp), %eax             # Compare j with high (index)
    jl	.L24                           # If j < high, repeat loop

    movl	32(%rbp), %eax             # Load high index into eax
    cltq                             
    leaq	0(,%rax,4), %rdx           # high * 4
    movq	16(%rbp), %rax             # Load array base address
    addq	%rax, %rdx                 # Add high index to base address
    movl	-4(%rbp), %eax             # Load i into eax
    cltq                             
    addq	$1, %rax                   # i++
    leaq	0(,%rax,4), %rcx           # Compute arr[i+1] address
    movq	16(%rbp), %rax             # Load array base address
    addq	%rax, %rcx                 # Add index to base address
    movq	40(%rbp), %r8              # Load stats pointer into r8
    call	swap                       # Call swap to swap arr[i] and arr[high]

    movl	-4(%rbp), %eax             # Load i
    addl	$1, %eax                   # i++
    addq	$48, %rsp                  # Deallocate stack space
    popq	%rbp                       # Restore base pointer
    ret                                # Return from partition
.seh_endproc

	.seh_endproc
.globl	quickSort                    
.def	quickSort	.scl	2	.type	32	.endef
.seh_proc	quickSort                  
quickSort:
    pushq	%rbp                       # Save base pointer
    .seh_pushreg	%rbp                 
    movq	%rsp, %rbp                 # Set base pointer to stack pointer
    .seh_setframe	%rbp, 0                
    subq	$48, %rsp                  # Allocate 48 bytes on stack
    .seh_stackalloc	48                   
    .seh_endprologue                   

    movq	%rcx, 16(%rbp)              # Store array address
    movl	%edx, 24(%rbp)              # Store low index
    movl	%r8d, 32(%rbp)              # Store high index
    movq	%r9, 40(%rbp)               # Store stats pointer

    movl	24(%rbp), %eax              # Load low index
    cmpl	32(%rbp), %eax              # Compare low with high
    jge	.L28                            # If low >= high, exit

    movq	40(%rbp), %r8               # Load stats pointer into r8
    movl	32(%rbp), %ecx              # Load high into ecx
    movl	24(%rbp), %edx              # Load low into edx
    movq	16(%rbp), %rax              # Load array base address
    movq	%r8, %r9                    # Store stats in r9 for the partition call
    movl	%ecx, %r8d                  # Store high into r8d
    movq	%rax, %rcx                  # Store array into rcx for the partition call
    call	partition                   # Call partition function

    movl	%eax, -4(%rbp)              # Store partition index into local variable
    movl	-4(%rbp), %eax              # Load partition index
    leal	-1(%eax), %r8d              # partition - 1
    movq	40(%rbp), %rcx              # Load stats pointer into rcx
    movl	24(%rbp), %edx              # Load low into edx
    movq	16(%rbp), %rax              # Load array into rax
    movq	%rcx, %r9                   # Store stats pointer into r9
    movq	%rax, %rcx                  # Store array into rcx
    call	quickSort                   # Recursive call to quickSort (low, partition - 1)

    movl	-4(%rbp), %eax              # Load partition index
    leal	1(%eax), %edx               # partition + 1
    movq	40(%rbp), %r8               # Load stats pointer into r8
    movl	32(%rbp), %ecx              # Load high into ecx
    movq	16(%rbp), %rax              # Load array into rax
    movq	%r8, %r9                    # Store stats pointer into r9
    movq	%rax, %rcx                  # Store array into rcx
    call	quickSort                   # Recursive call to quickSort (partition + 1, high)

.L28:
    nop                               
    addq	$48, %rsp                   # Deallocate stack space
    popq	%rbp                        # Restore base pointer
    ret                                 # Return
.seh_endproc

.globl	swap                         
.def	swap	.scl	2	.type	32	.endef
.seh_proc	swap                      
swap:
    pushq	%rbp                        # Save base pointer
    .seh_pushreg	%rbp                 
    movq	%rsp, %rbp                  # Set base pointer to stack pointer
    .seh_setframe	%rbp, 0              
    subq	$16, %rsp                   # Allocate 16 bytes on stack
    .seh_stackalloc	16                   
    .seh_endprologue                  
	movq	%rcx, 16(%rbp)              # Store address of first element
    movq	%rdx, 24(%rbp)              # Store address of second element
    movq	%r8, 32(%rbp)               # Store stats pointer
    movq	16(%rbp), %rax              # Load first element's address into rax
    movl	(%rax), %eax                # Load the first element's value
    movl	%eax, -4(%rbp)              # Store the value in local variable temp
    movq	24(%rbp), %rax              # Load second element's address into rax
    movl	(%rax), %edx                # Load the second element's value into edx
    movq	16(%rbp), %rax              # Load first element's address into rax
    movl	%edx, (%rax)                # Store the second element's value in the first element's location
    movq	24(%rbp), %rax              # Load second element's address into rax
    movl	-4(%rbp), %edx              # Load the value
	movl	-4(%rbp), %edx              # Load the value from temp
    movl	%edx, (%rax)                # Store temp in the second element's location
    movq	32(%rbp), %rax              # Load stats pointer
    movl	4(%rax), %eax               # Load stats->swaps
    leal	1(%eax), %edx               # swaps++
    movq	32(%rbp), %rax              # Load stats pointer
    movl	%edx, 4(%rax)               # Store updated stats->swaps
    nop                               
    addq	$16, %rsp                   # Deallocate stack space
    popq	%rbp                        # Restore base pointer
    ret                                 # Return
.seh_endproc

	.section .rdata,"dr"
.LC11:
	.ascii "%d \0"
.LC12:
	.ascii "\12\0"
	.text
.globl	printArray                    
.def	printArray	.scl	2	.type	32	.endef
.seh_proc	printArray                
    pushq	%rbp                        # Save base pointer
    .seh_pushreg	%rbp                    
    movq	%rsp, %rbp                  # Set base pointer to stack pointer
    .seh_setframe	%rbp, 0               
    subq	$48, %rsp                   # Allocate 48 bytes on stack
    .seh_stackalloc	48                    
    .seh_endprologue                   

    movq	%rcx, 16(%rbp)              # Store array address
    movl	%edx, 24(%rbp)              # Store array size
    movl	$0, -4(%rbp)                # i = 0

    jmp	.L31                            # Jump to loop start

.L32:                                   # Loop 
    movl	-4(%rbp), %eax              # Load index i
    cltq                             
    leaq	0(,%rax,4), %rdx            # Compute index i * 4
    movq	16(%rbp), %rax              # Load array base address
    addq	%rdx, %rax                  # Add index to base address
    movl	(%rax), %eax                # Load arr[i]
    movl	%eax, %edx                  # Move arr[i] to edx (argument for printf)
    leaq	.LC11(%rip), %rax           # Load format string address (for %d)
    movq	%rax, %rcx                  # Move format string to rcx
    call	printf                      # Call printf to print arr[i]

    addl	$1, -4(%rbp)                # index++
.L31:                                   # Loop check
    movl	-4(%rbp), %eax              # Load i
    cmpl	24(%rbp), %eax              # Compare i with size
    jl	.L32                            # If i < size, repeat loop

    leaq	.LC12(%rip), %rax           # Load newline character address
    movq	%rax, %rcx                  # Move newline character to rcx
    call	printf                      # Call printf to print newline

    nop                               
    addq	$48, %rsp                   # Deallocate stack space
    popq	%rbp                        # Restore base pointer
    ret                                 # Return
.seh_endproc

	.section .rdata,"dr"
.LC13:
	.ascii "a\0"
.LC14:
	.ascii "sort_stats.txt\0"
.LC15:
	.ascii "%s:\12\0"
.LC16:
	.ascii "Comparisons: %d\12\0"
.LC17:
	.ascii "Swaps: %d\12\12\0"
	.align 8
.LC18:
	.ascii "Sorting statistics written to file.\12\0"
	.align 8
.LC19:
	.ascii "Failed to open file for writing.\12\0"
	.text
.globl	writeStatsToFile              
.def	writeStatsToFile	.scl	2	.type	32	.endef
.seh_proc	writeStatsToFile         
writeStatsToFile:
    pushq	%rbp                        # Save base pointer
    .seh_pushreg	%rbp                # Record base pointer in SEH
    movq	%rsp, %rbp                  # Set base pointer to stack pointer
    .seh_setframe	%rbp, 0             
    subq	$48, %rsp                   # Allocate 48 bytes on stack
    .seh_stackalloc	48                   
    .seh_endprologue                  

    movq	%rcx, 16(%rbp)              # Store stats pointer
    movq	%rdx, 24(%rbp)              # Store algorithm name
    leaq	.LC13(%rip), %rax           # Load "a" (append mode) string address
    movq	%rax, %rdx                  # Move append mode string to rdx
    leaq	.LC14(%rip), %rax           # Load file name string address
    movq	%rax, %rcx                  # Move file name to rcx
    call	fopen                       # Call fopen to open file

    movq	%rax, -8(%rbp)              # Store file pointer
    cmpq	$0, -8(%rbp)                # Check if file pointer is NULL
    je	.L34                            # If file is NULL, jump to error handling

    movq	24(%rbp), %rdx              # Load algorithm name
    movq	-8(%rbp), %rax              # Load file pointer
    movq	%rdx, %r8                   # Move algorithm name to r8 (argument for fprintf)
    leaq	.LC15(%rip), %rdx           # Load format string ("%s:\n")
    movq	%rax, %rcx                  # Move file pointer to rcx (argument for fprintf)
    call	fprintf                     # Call fprintf to write algorithm name to file

    movl	16(%rbp), %edx              # Load stats->comparisons
    movq	-8(%rbp), %rax              # Load file pointer
    movl	%edx, %r8d                  # Move comparisons to r8d (argument for fprintf)
    leaq	.LC16(%rip), %rdx           # Load format string ("Comparisons: %d\n")
    movq	%rax, %rcx                  # Move file pointer to rcx (argument for fprintf)
    call	fprintf                     # Call fprintf to write comparisons to file

    movl	20(%rbp), %edx              # Load stats->swaps
    movq	-8(%rbp), %rax              # Load file pointer
    movl	%edx, %r8d                  # Move swaps to r8d (argument for fprintf)
    leaq	.LC17(%rip), %rdx           # Load format string ("Swaps: %d\n\n")
    movq	%rax, %rcx                  # Move file pointer to rcx (argument for fprintf)
    call	fprintf                     # Call fprintf to write swaps to file

    movq	-8(%rbp), %rax              # Load file pointer
    movq	%rax, %rcx                  # Move file pointer to rcx (argument for fclose)
    call	fclose                      # Call fclose to close the file

    leaq	.LC18(%rip), %rax           # Load "Sorting statistics written to file." string address
    movq	%rax, %rcx                  # Move string to rcx
    call	printf                      # Call printf to display success message
    jmp	.L36                            # Jump to function end

.L34:                                  
    leaq	.LC19(%rip), %rax           # Load "Failed to open file for writing." string address
    movq	%rax, %rcx                  # Move string to rcx
    call	printf                      # Call printf to display error message

.L36:
    nop                               
    addq	$48, %rsp                   # Deallocate stack space
    popq	%rbp                        # Restore base pointer
    ret                                 # Return
.seh_endproc

	
	.def	__mingw_vfscanf	.scl	2	.type	32	.endef
	.def	__mingw_vfprintf	.scl	2	.type	32	.endef
	.def	fopen	.scl	2	.type	32	.endef
	.def	fclose	.scl	2	.type	32	.endef
