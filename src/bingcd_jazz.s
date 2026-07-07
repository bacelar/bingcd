	.att_syntax
	.text
	.p2align	5
	.global	inner
	.global	c_approx
	.type	inner, %function
inner:
	movq	%rsp, %rax
	leaq	-72(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rbx, 16(%rsp)
	movq	%rbp, 24(%rsp)
	movq	%r12, 32(%rsp)
	movq	%r13, 40(%rsp)
	movq	%r14, 48(%rsp)
	movq	%r15, 56(%rsp)
	movq	%rax, 64(%rsp)
	movq	%rdi, (%rsp)
	movq	$1, %rcx
	movq	$2, %rsi
	movq	$3, %r8
	movq	$4, %r9
	movq	$10, %r10
	movq	$11, %rbx
	movq	$12, %rbp
	movq	$13, %r11
	movq	$62, 8(%rsp)
	jmp 	Linner$1
Linner$2:
	subq	$2, 8(%rsp)
	call	Linnerloop_body_opt$1
Linner$4:
	call	Linnerloop_body_opt$1
Linner$3:
Linner$1:
	cmpq	$0, 8(%rsp)
	jne 	Linner$2
	movq	(%rsp), %rdi
	movq	%rcx, (%rdi)
	movq	%rsi, 8(%rdi)
	movq	%r8, 16(%rdi)
	movq	%r9, 24(%rdi)
	movq	%r10, 32(%rdi)
	movq	%rbx, 40(%rdi)
	movq	%r11, 48(%rdi)
	movq	%rbp, 56(%rdi)
	movq	16(%rsp), %rbx
	movq	24(%rsp), %rbp
	movq	32(%rsp), %r12
	movq	40(%rsp), %r13
	movq	48(%rsp), %r14
	movq	56(%rsp), %r15
	movq	64(%rsp), %rsp
	ret
	.type	c_approx, %function
c_approx:
	movq	%rsp, %rax
	leaq	-56(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rbx, (%rsp)
	movq	%rbp, 8(%rsp)
	movq	%r12, 16(%rsp)
	movq	%r13, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	%rdx, %r11
	movq	24(%rsi), %rax
	movq	16(%rsi), %rcx
	movq	8(%rsi), %rdx
	movq	(%rsi), %rsi
	movq	24(%r11), %r8
	movq	16(%r11), %r9
	movq	8(%r11), %r10
	movq	(%r11), %r11
	call	Lapprox_h$1
Lc_approx$1:
	movq	%rbx, (%rdi)
	movq	%rsi, 8(%rdi)
	movq	%rbp, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	movq	40(%rsp), %r15
	movq	48(%rsp), %rsp
	ret
Linnerloop_body_opt$1:
	movq	%rcx, %rax
	movq	%rsi, %rdx
	movq	%r8, %rdi
	movq	%r9, %r12
	cmpq	%rsi, %rcx
	cmovb	%rdx, %rcx
	cmovb	%rax, %rsi
	cmovb	%r12, %r8
	cmovb	%rdi, %r9
	subq	%r9, %r8
	subq	%rsi, %rcx
	testq	$1, %rdi
	cmove	%rax, %rcx
	cmove	%rdx, %rsi
	cmove	%rdi, %r8
	cmove	%r12, %r9
	movq	%r10, %r12
	movq	%r11, %r13
	movq	%rbx, %r14
	movq	%rbp, %r15
	cmpq	%rdx, %rax
	cmovb	%r13, %r10
	cmovb	%r12, %r11
	cmovb	%r15, %rbx
	cmovb	%r14, %rbp
	subq	%r11, %r10
	subq	%rbp, %rbx
	testq	$1, %rdi
	cmove	%r12, %r10
	cmove	%r13, %r11
	cmove	%r14, %rbx
	cmove	%r15, %rbp
	shrq	$1, %r8
	shrq	$1, %rcx
	addq	%r11, %r11
	addq	%rbp, %rbp
	ret
Lapprox_h$1:
	movq	%rsi, %rbx
	movq	%r11, %rbp
	movq	%rsi, %r12
	orq 	%r11, %r12
	movq	%rdx, %r13
	movq	%r10, %r14
	movq	%r12, %r15
	andq	%r12, %r12
	cmove	%rdx, %rbx
	cmove	%r10, %rbp
	orq 	%rdx, %r12
	orq 	%r10, %r12
	andq	%r15, %r15
	cmove	%rcx, %r13
	cmove	%r9, %r14
	movq	%r12, %r15
	andq	%r12, %r12
	cmove	%rcx, %rbx
	cmove	%r9, %rbp
	orq 	%rcx, %r12
	orq 	%r9, %r12
	andq	%r15, %r15
	cmove	%rax, %r13
	cmove	%r8, %r14
	andq	%r12, %r12
	cmove	%rax, %rbx
	cmove	%r8, %rbp
	movq	%rbx, %rax
	orq 	%rbp, %rax
	lzcntq	%rax, %rax
	negq	%rax
	movb	%al, %cl
	andb	$63, %cl
	shldq	%cl, %r13, %rbx
	shldq	%cl, %r14, %rbp
	ret
	.ident	"Jasmin Compiler @VERSION@"
	.section	".note.GNU-stack", "", %progbits
