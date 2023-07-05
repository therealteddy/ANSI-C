	.file	"main.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"----------------------------------------------------------------------------------------------"
	.align 8
.LC1:
	.string	"=================================== UNSIGNED INTEGERS ========================================"
.LC2:
	.string	"(U)Char: 0 to %d \n"
.LC3:
	.string	"(U)Int:  0 to %u \n"
.LC4:
	.string	"(U)Long: 0 to %lu \n"
.LC5:
	.string	"(U)Short: 0 to %d \n"
	.align 8
.LC6:
	.string	"==================================== SIGNED INTEGERS ========================================="
.LC7:
	.string	"(S)Char: %d to %d \n"
.LC8:
	.string	"(S)Short: %d to %d \n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$8, %edi
	call	get_range
	subl	$1, %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$32, %edi
	call	get_range
	subl	$1, %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$64, %edi
	call	get_range
	cltq
	subq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$16, %edi
	call	get_range
	subl	$1, %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$8, %edi
	call	get_range
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	leal	-1(%rax), %ebx
	movl	$8, %edi
	call	get_range
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	negl	%eax
	movl	%ebx, %edx
	movl	%eax, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$16, %edi
	call	get_range
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	leal	-1(%rax), %ebx
	movl	$16, %edi
	call	get_range
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	negl	%eax
	movl	%ebx, %edx
	movl	%eax, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	get_range
	.type	get_range, @function
get_range:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$1, -8(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L4
.L5:
	sall	-8(%rbp)
	addl	$1, -4(%rbp)
.L4:
	movl	-4(%rbp), %eax
	cltq
	cmpq	%rax, -24(%rbp)
	jge	.L5
	movl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	get_range, .-get_range
	.ident	"GCC: (GNU) 12.2.1 20230201"
	.section	.note.GNU-stack,"",@progbits
