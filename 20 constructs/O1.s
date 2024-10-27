	.file	"my_program.c"
	.text
	.def	scanf;	.scl	3;	.type	32;	.endef
	.seh_proc	scanf
scanf:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, 88(%rsp)
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	leaq	88(%rsp), %rsi
	movq	%rsi, 40(%rsp)
	movl	$0, %ecx
	call	*__imp___acrt_iob_func(%rip)
	movq	%rax, %rcx
	movq	%rsi, %r8
	movq	%rbx, %rdx
	call	__mingw_vfscanf
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, 88(%rsp)
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	leaq	88(%rsp), %rsi
	movq	%rsi, 40(%rsp)
	movl	$1, %ecx
	call	*__imp___acrt_iob_func(%rip)
	movq	%rax, %rcx
	movq	%rsi, %r8
	movq	%rbx, %rdx
	call	__mingw_vfprintf
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.def	fprintf;	.scl	3;	.type	32;	.endef
	.seh_proc	fprintf
fprintf:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	leaq	80(%rsp), %r8
	movq	%r8, 40(%rsp)
	call	__mingw_vfprintf
	addq	$56, %rsp
	ret
	.seh_endproc
	.globl	insertionSort
	.def	insertionSort;	.scl	2;	.type	32;	.endef
	.seh_proc	insertionSort
insertionSort:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	movq	%rcx, %rbx
	cmpl	$1, %edx
	jle	.L4
	leal	-1(%rdx), %esi
	movl	$0, %r11d
	jmp	.L9
.L7:
	movslq	%edx, %rdx
	movl	%r10d, 4(%rbx,%rdx,4)
	addq	$1, %r11
	addq	$4, %rcx
	cmpq	%rsi, %r11
	je	.L4
.L9:
	movl	4(%rcx), %r10d
	movl	%r11d, %edx
	movq	%rcx, %rax
	testl	%r11d, %r11d
	js	.L7
.L6:
	cmpl	%r10d, (%rax)
	jle	.L7
	addl	$1, (%r8)
	movl	(%rax), %r9d
	movl	%r9d, 4(%rax)
	addl	$1, 4(%r8)
	subl	$1, %edx
	subq	$4, %rax
	cmpl	$-1, %edx
	jne	.L6
	jmp	.L7
.L4:
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.globl	partition
	.def	partition;	.scl	2;	.type	32;	.endef
	.seh_proc	partition
partition:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	movq	%rcx, %r10
	movslq	%r8d, %rax
	leaq	(%rcx,%rax,4), %rdi
	movl	(%rdi), %r11d
	leal	-1(%rdx), %eax
	cmpl	%edx, %r8d
	jle	.L14
	movslq	%edx, %rbx
	leaq	(%rcx,%rbx,4), %rcx
	subl	%edx, %r8d
	addq	%rbx, %r8
	leaq	(%r10,%r8,4), %r8
	jmp	.L16
.L15:
	addq	$4, %rcx
	cmpq	%r8, %rcx
	je	.L14
.L16:
	addl	$1, (%r9)
	movl	(%rcx), %edx
	cmpl	%r11d, %edx
	jge	.L15
	addl	$1, %eax
	movslq	%eax, %rbx
	leaq	(%r10,%rbx,4), %rbx
	movl	(%rbx), %esi
	movl	%edx, (%rbx)
	movl	%esi, (%rcx)
	addl	$1, 4(%r9)
	jmp	.L15
.L14:
	movslq	%eax, %rdx
	leaq	4(%r10,%rdx,4), %rdx
	movl	(%rdx), %ecx
	movl	(%rdi), %r8d
	movl	%r8d, (%rdx)
	movl	%ecx, (%rdi)
	addl	$1, 4(%r9)
	addl	$1, %eax
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.globl	quickSort
	.def	quickSort;	.scl	2;	.type	32;	.endef
	.seh_proc	quickSort
quickSort:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%r8d, %ebx
	movq	%r9, %rbp
	cmpl	%r8d, %edx
	jl	.L20
.L18:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L20:
	call	partition
	movl	%eax, %r12d
	movq	%rbp, %r9
	leal	-1(%rax), %r8d
	movl	%esi, %edx
	movq	%rdi, %rcx
	call	quickSort
	leal	1(%r12), %edx
	movq	%rbp, %r9
	movl	%ebx, %r8d
	movq	%rdi, %rcx
	call	quickSort
	jmp	.L18
	.seh_endproc
	.globl	swap
	.def	swap;	.scl	2;	.type	32;	.endef
	.seh_proc	swap
swap:
	.seh_endprologue
	movl	(%rcx), %eax
	movl	(%rdx), %r9d
	movl	%r9d, (%rcx)
	movl	%eax, (%rdx)
	addl	$1, 4(%r8)
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "%d \0"
.LC1:
	.ascii "\12\0"
	.text
	.globl	printArray
	.def	printArray;	.scl	2;	.type	32;	.endef
	.seh_proc	printArray
printArray:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	testl	%edx, %edx
	jle	.L23
	movq	%rcx, %rbx
	movslq	%edx, %rdx
	leaq	(%rcx,%rdx,4), %rdi
	leaq	.LC0(%rip), %rsi
.L24:
	movl	(%rbx), %edx
	movq	%rsi, %rcx
	call	printf
	addq	$4, %rbx
	cmpq	%rdi, %rbx
	jne	.L24
.L23:
	leaq	.LC1(%rip), %rcx
	call	printf
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "a\0"
.LC3:
	.ascii "sort_stats.txt\0"
.LC4:
	.ascii "%s:\12\0"
.LC5:
	.ascii "Comparisons: %d\12\0"
.LC6:
	.ascii "Swaps: %d\12\12\0"
	.align 8
.LC7:
	.ascii "Sorting statistics written to file.\12\0"
	.align 8
.LC8:
	.ascii "Failed to open file for writing.\12\0"
	.text
	.globl	writeStatsToFile
	.def	writeStatsToFile;	.scl	2;	.type	32;	.endef
	.seh_proc	writeStatsToFile
writeStatsToFile:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rcx
	call	fopen
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L27
	movq	%rdi, %r8
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	fprintf
	movl	%esi, %r8d
	leaq	.LC5(%rip), %rdx
	movq	%rbx, %rcx
	call	fprintf
	shrq	$32, %rsi
	movq	%rsi, %r8
	leaq	.LC6(%rip), %rdx
	movq	%rbx, %rcx
	call	fprintf
	movq	%rbx, %rcx
	call	fclose
	leaq	.LC7(%rip), %rcx
	call	printf
	nop
.L26:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L27:
	leaq	.LC8(%rip), %rcx
	call	printf
	jmp	.L26
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC9:
	.ascii "Original array:\12\0"
	.align 8
.LC10:
	.ascii "Array: {64, 34, 25, 12, 22, 11, 90}\12\0"
.LC11:
	.ascii "Choose a sorting algorithm:\12\0"
.LC12:
	.ascii "1. Quick Sort\12\0"
.LC13:
	.ascii "2. Insertion Sort\12\0"
.LC14:
	.ascii "Enter your choice (1-2): \0"
.LC15:
	.ascii "%d\0"
.LC16:
	.ascii "Quick Sort\0"
.LC17:
	.ascii "Insertion Sort\0"
.LC18:
	.ascii "Invalid choice.\12\0"
.LC19:
	.ascii "Sorted array:\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	call	__main
	movl	$64, 48(%rsp)
	movl	$34, 52(%rsp)
	movl	$25, 56(%rsp)
	movl	$12, 60(%rsp)
	movl	$22, 64(%rsp)
	movl	$11, 68(%rsp)
	movl	$90, 72(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 44(%rsp)
	leaq	.LC9(%rip), %rcx
	call	printf
	leaq	48(%rsp), %rcx
	movl	$7, %edx
	call	printArray
	leaq	.LC10(%rip), %rcx
	call	printf
	leaq	.LC11(%rip), %rcx
	call	printf
	leaq	.LC12(%rip), %rcx
	call	printf
	leaq	.LC13(%rip), %rcx
	call	printf
	leaq	.LC14(%rip), %rcx
	call	printf
	leaq	76(%rsp), %rdx
	leaq	.LC15(%rip), %rcx
	call	scanf
	movl	76(%rsp), %eax
	cmpl	$1, %eax
	je	.L30
	cmpl	$2, %eax
	je	.L31
	leaq	.LC18(%rip), %rcx
	call	printf
	jmp	.L34
.L30:
	leaq	48(%rsp), %rcx
	leaq	40(%rsp), %r9
	movl	$6, %r8d
	movl	$0, %edx
	call	quickSort
	leaq	.LC16(%rip), %rdx
	movq	40(%rsp), %rcx
	call	writeStatsToFile
.L33:
	leaq	.LC19(%rip), %rcx
	call	printf
	leaq	48(%rsp), %rcx
	movl	$7, %edx
	call	printArray
.L34:
	movl	$0, %eax
	addq	$88, %rsp
	ret
.L31:
	leaq	48(%rsp), %rcx
	leaq	40(%rsp), %r8
	movl	$7, %edx
	call	insertionSort
	leaq	.LC17(%rip), %rdx
	movq	40(%rsp), %rcx
	call	writeStatsToFile
	jmp	.L33
	.seh_endproc
	.def	__mingw_vfscanf;	.scl	2;	.type	32;	.endef
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
