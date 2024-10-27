	.file	"my_program.c"
	.text
	.p2align 4
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
	leaq	88(%rsp), %rsi
	movq	%rdx, 88(%rsp)
	movq	%rcx, %rbx
	movl	$1, %ecx
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	movq	%rsi, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4
	.def	fprintf;	.scl	3;	.type	32;	.endef
	.seh_proc	fprintf
fprintf:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%r8, 80(%rsp)
	leaq	80(%rsp), %r8
	movq	%r9, 88(%rsp)
	movq	%r8, 40(%rsp)
	call	__mingw_vfprintf
	addq	$56, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "%d\0"
	.text
	.p2align 4
	.def	scanf.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	scanf.constprop.0
scanf.constprop.0:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	xorl	%ecx, %ecx
	leaq	72(%rsp), %rbx
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	%rbx, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rbx, %r8
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	call	__mingw_vfscanf
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	insertionSort
	.def	insertionSort;	.scl	2;	.type	32;	.endef
	.seh_proc	insertionSort
insertionSort:
	.seh_endprologue
	xorl	%r10d, %r10d
	leal	-1(%rdx), %r11d
	cmpl	$1, %edx
	jle	.L5
	.p2align 4,,10
	.p2align 3
.L10:
	movl	4(%rcx,%r10,4), %r9d
	movq	%r10, %rax
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L9:
	addl	$1, (%r8)
	movl	(%rcx,%rax,4), %edx
	movl	%edx, 4(%rcx,%rax,4)
	subq	$1, %rax
	addl	$1, 4(%r8)
	cmpl	$-1, %eax
	je	.L12
.L7:
	cmpl	%r9d, (%rcx,%rax,4)
	jg	.L9
	addl	$1, %eax
	cltq
	leaq	(%rcx,%rax,4), %rax
.L8:
	addq	$1, %r10
	movl	%r9d, (%rax)
	cmpq	%r10, %r11
	jne	.L10
.L5:
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	movq	%rcx, %rax
	jmp	.L8
	.seh_endproc
	.p2align 4
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
	movslq	%r8d, %rax
	movq	%rcx, %rbx
	leal	-1(%rdx), %r10d
	leaq	(%rcx,%rax,4), %rsi
	movl	(%rsi), %r11d
	cmpl	%edx, %r8d
	jle	.L19
	movslq	%edx, %rax
	subl	%edx, %r8d
	addq	%rax, %r8
	leaq	(%rcx,%rax,4), %rcx
	leaq	(%rbx,%r8,4), %r8
	.p2align 4,,10
	.p2align 3
.L18:
	addl	$1, (%r9)
	movl	(%rcx), %eax
	cmpl	%r11d, %eax
	jge	.L17
	addl	$1, %r10d
	movslq	%r10d, %rdx
	leaq	(%rbx,%rdx,4), %rdx
	movl	(%rdx), %edi
	movl	%eax, (%rdx)
	movl	%edi, (%rcx)
	addl	$1, 4(%r9)
.L17:
	addq	$4, %rcx
	cmpq	%rcx, %r8
	jne	.L18
	movl	(%rsi), %r11d
	leal	1(%r10), %eax
.L16:
	movslq	%r10d, %r10
	leaq	4(%rbx,%r10,4), %rdx
	movl	(%rdx), %ecx
	movl	%r11d, (%rdx)
	movl	%ecx, (%rsi)
	addl	$1, 4(%r9)
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	movl	%edx, %eax
	jmp	.L16
	.seh_endproc
	.p2align 4
	.globl	quickSort
	.def	quickSort;	.scl	2;	.type	32;	.endef
	.seh_proc	quickSort
quickSort:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movl	%r8d, %r12d
	cmpl	%edx, %r8d
	jle	.L21
	movq	%rcx, %rdi
	movl	%edx, %r13d
.L39:
	movl	%r12d, %r8d
	movl	%r13d, %edx
	movq	%rdi, %rcx
	call	partition
	leal	-1(%rax), %ebx
	movl	%eax, %ebp
	cmpl	%r13d, %ebx
	jle	.L23
	movl	%eax, %esi
	movl	%r12d, %ebp
.L38:
	movl	%ebx, %r8d
	movl	%r13d, %edx
	movq	%rdi, %rcx
	call	partition
	leal	-1(%rax), %r12d
	movl	%eax, %r14d
	cmpl	%r13d, %r12d
	jle	.L24
	movl	%eax, 52(%rsp)
	movl	%ebx, 48(%rsp)
	movl	%ebp, %ebx
	movl	%r12d, %ebp
	movq	%r9, %r12
.L37:
	movl	%r13d, %edx
	movq	%r12, %r9
	movl	%ebp, %r8d
	movq	%rdi, %rcx
	call	partition
	leal	-1(%rax), %edx
	movl	%edx, 44(%rsp)
	cmpl	%r13d, %edx
	jle	.L25
	movl	%esi, 56(%rsp)
	movl	%eax, 60(%rsp)
.L36:
	movl	44(%rsp), %r8d
	movq	%r12, %r9
	movl	%r13d, %edx
	movq	%rdi, %rcx
	call	partition
	leal	-1(%rax), %esi
	cmpl	%r13d, %esi
	jle	.L26
	movl	%ebp, 64(%rsp)
	movl	%eax, %r15d
	movl	%ebx, 176(%rsp)
.L35:
	movq	%r12, %r9
	movl	%esi, %r8d
	movl	%r13d, %edx
	movq	%rdi, %rcx
	call	partition
	leal	-1(%rax), %r14d
	movl	%eax, %ebx
	cmpl	%r13d, %r14d
	jle	.L27
	movl	%r14d, 32(%rsp)
	movl	%r13d, %r14d
.L34:
	movl	32(%rsp), %r8d
	movq	%r12, %r9
	movl	%r14d, %edx
	movq	%rdi, %rcx
	call	partition
	movl	%eax, %ebp
	leal	-1(%rax), %eax
	movl	%eax, 36(%rsp)
	cmpl	%r14d, %eax
	jle	.L28
	movl	%ebp, %r11d
	movl	%ebx, %r13d
	movl	%esi, %ebp
.L33:
	movl	36(%rsp), %r8d
	movq	%r12, %r9
	movl	%r14d, %edx
	movq	%rdi, %rcx
	movl	%r11d, 40(%rsp)
	call	partition
	movl	40(%rsp), %r11d
	leal	-1(%rax), %ebx
	movl	%eax, %esi
	cmpl	%r14d, %ebx
	jle	.L29
	movl	%eax, 40(%rsp)
	movl	%r14d, %esi
	movl	%r11d, %r14d
.L32:
	movq	%r12, %r9
	movl	%ebx, %r8d
	movl	%esi, %edx
	movq	%rdi, %rcx
	call	partition
	leal	-1(%rax), %r11d
	movl	%eax, %r10d
	cmpl	%esi, %r11d
	jle	.L30
	movq	%r12, 184(%rsp)
	movl	%ebx, %r12d
	movl	%esi, %ebx
	movq	%r9, %rsi
.L31:
	movl	%r11d, %r8d
	movl	%ebx, %edx
	movq	%rsi, %r9
	movq	%rdi, %rcx
	movl	%r10d, 76(%rsp)
	movl	%r11d, 72(%rsp)
	call	partition
	movl	%ebx, %edx
	movq	%rdi, %rcx
	leal	-1(%rax), %r8d
	movl	%eax, 68(%rsp)
	call	quickSort
	movl	68(%rsp), %eax
	movl	72(%rsp), %r11d
	movl	76(%rsp), %r10d
	leal	1(%rax), %ebx
	cmpl	%ebx, %r11d
	jg	.L31
	movl	%r12d, %ebx
	movq	%rsi, %r12
.L30:
	leal	1(%r10), %esi
	cmpl	%esi, %ebx
	jg	.L32
	movl	40(%rsp), %esi
	movl	%r14d, %r11d
.L29:
	leal	1(%rsi), %r14d
	cmpl	%r14d, 36(%rsp)
	jg	.L33
	movl	%ebp, %esi
	movl	%r13d, %ebx
	movl	%r11d, %ebp
.L28:
	leal	1(%rbp), %r14d
	cmpl	%r14d, 32(%rsp)
	jg	.L34
.L27:
	leal	1(%rbx), %r13d
	cmpl	%r13d, %esi
	jg	.L35
	movl	64(%rsp), %ebp
	movl	176(%rsp), %ebx
	movl	%r15d, %eax
.L26:
	leal	1(%rax), %r13d
	cmpl	%r13d, 44(%rsp)
	jg	.L36
	movl	56(%rsp), %esi
	movl	60(%rsp), %eax
.L25:
	leal	1(%rax), %r13d
	cmpl	%r13d, %ebp
	jg	.L37
	movl	%ebx, %ebp
	movl	52(%rsp), %r14d
	movl	48(%rsp), %ebx
	movq	%r12, %r9
.L24:
	leal	1(%r14), %r13d
	cmpl	%r13d, %ebx
	jg	.L38
	movl	%ebp, %r12d
	movl	%esi, %ebp
.L23:
	leal	1(%rbp), %r13d
	cmpl	%r12d, %r13d
	jl	.L39
.L21:
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_endproc
	.p2align 4
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
.LC1:
	.ascii "%d \0"
.LC2:
	.ascii "\12\0"
	.text
	.p2align 4
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
	jle	.L51
	movslq	%edx, %rdx
	movq	%rcx, %rbx
	leaq	.LC1(%rip), %rsi
	leaq	(%rcx,%rdx,4), %rdi
	.p2align 4,,10
	.p2align 3
.L52:
	movl	(%rbx), %edx
	movq	%rsi, %rcx
	addq	$4, %rbx
	call	printf
	cmpq	%rdi, %rbx
	jne	.L52
.L51:
	leaq	.LC2(%rip), %rcx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	printf
	.seh_endproc
	.section .rdata,"dr"
.LC3:
	.ascii "a\0"
.LC4:
	.ascii "sort_stats.txt\0"
.LC5:
	.ascii "%s:\12\0"
.LC6:
	.ascii "Comparisons: %d\12\0"
.LC7:
	.ascii "Swaps: %d\12\12\0"
	.align 8
.LC8:
	.ascii "Sorting statistics written to file.\12\0"
	.align 8
.LC9:
	.ascii "Failed to open file for writing.\12\0"
	.text
	.p2align 4
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
	leaq	.LC4(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	call	fopen
	leaq	.LC9(%rip), %rcx
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L56
	movq	%rdi, %r8
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	fprintf
	movl	%esi, %r8d
	movq	%rbx, %rcx
	shrq	$32, %rsi
	leaq	.LC6(%rip), %rdx
	call	fprintf
	movq	%rsi, %r8
	leaq	.LC7(%rip), %rdx
	movq	%rbx, %rcx
	call	fprintf
	movq	%rbx, %rcx
	call	fclose
	leaq	.LC8(%rip), %rcx
.L56:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	printf
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC12:
	.ascii "Original array:\12\0"
	.align 8
.LC13:
	.ascii "Array: {64, 34, 25, 12, 22, 11, 90}\12\0"
.LC14:
	.ascii "Choose a sorting algorithm:\12\0"
.LC15:
	.ascii "1. Quick Sort\12\0"
.LC16:
	.ascii "2. Insertion Sort\12\0"
.LC17:
	.ascii "Enter your choice (1-2): \0"
.LC18:
	.ascii "Quick Sort\0"
.LC19:
	.ascii "Insertion Sort\0"
.LC20:
	.ascii "Invalid choice.\12\0"
.LC21:
	.ascii "Sorted array:\12\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	call	__main
	movdqu	.LC10(%rip), %xmm0
	movq	.LC11(%rip), %rax
	leaq	.LC12(%rip), %rcx
	leaq	48(%rsp), %rbx
	movl	$90, 72(%rsp)
	movups	%xmm0, 48(%rsp)
	movq	%rax, 64(%rsp)
	movq	$0, 40(%rsp)
	call	printf
	movl	$7, %edx
	movq	%rbx, %rcx
	call	printArray
	leaq	.LC13(%rip), %rcx
	call	printf
	leaq	.LC14(%rip), %rcx
	call	printf
	leaq	.LC15(%rip), %rcx
	call	printf
	leaq	.LC16(%rip), %rcx
	call	printf
	leaq	.LC17(%rip), %rcx
	call	printf
	leaq	36(%rsp), %rdx
	leaq	.LC0(%rip), %rcx
	call	scanf.constprop.0
	movl	36(%rsp), %eax
	cmpl	$1, %eax
	je	.L58
	cmpl	$2, %eax
	je	.L59
	leaq	.LC20(%rip), %rcx
	call	printf
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbx
	ret
.L58:
	xorl	%edx, %edx
	movq	%rbx, %rcx
	leaq	40(%rsp), %r9
	movl	$6, %r8d
	call	quickSort
	movq	40(%rsp), %rcx
	leaq	.LC18(%rip), %rdx
	call	writeStatsToFile
.L61:
	leaq	.LC21(%rip), %rcx
	call	printf
	movl	$7, %edx
	movq	%rbx, %rcx
	call	printArray
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbx
	ret
.L59:
	movq	%rbx, %rcx
	leaq	40(%rsp), %r8
	movl	$7, %edx
	call	insertionSort
	movq	40(%rsp), %rcx
	leaq	.LC19(%rip), %rdx
	call	writeStatsToFile
	jmp	.L61
	.seh_endproc
	.section .rdata,"dr"
	.align 16
.LC10:
	.long	64
	.long	34
	.long	25
	.long	12
	.align 8
.LC11:
	.long	22
	.long	11
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	__mingw_vfscanf;	.scl	2;	.type	32;	.endef
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
