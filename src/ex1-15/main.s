	.file	"main.c"
	.text
	.section	.rodata
.LC1:
	.string	"100F => %0.0f \n"
.LC2:
	.string	"100C => %0.0f \n"
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
	movq	.LC0(%rip), %rax
	movq	%rax, %xmm0
	call	convert_to_celsius
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	.LC0(%rip), %rax
	movq	%rax, %xmm0
	call	convert_to_farenheit
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	convert_to_celsius
	.type	convert_to_celsius, @function
convert_to_celsius:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	convert_to_celsius, .-convert_to_celsius
	.globl	convert_to_farenheit
	.type	convert_to_farenheit, @function
convert_to_farenheit:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC6(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	convert_to_farenheit, .-convert_to_farenheit
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1079574528
	.align 8
.LC3:
	.long	0
	.long	1077936128
	.align 8
.LC4:
	.long	1908874354
	.long	1071761180
	.align 8
.LC5:
	.long	0
	.long	1075970048
	.align 8
.LC6:
	.long	0
	.long	1075052544
	.ident	"GCC: (GNU) 12.2.1 20230201"
	.section	.note.GNU-stack,"",@progbits
