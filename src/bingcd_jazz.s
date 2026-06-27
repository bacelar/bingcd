	.att_syntax
	.text
	.p2align	5
	.global	inner
	.global	approx
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
	movq	$31, 8(%rsp)
	movq	$1, %rax
	movq	$2, %rcx
	movq	$3, %rdx
	movq	$4, %rsi
	movq	$10, %rdi
	movq	$11, %r8
	movq	$12, %r9
	movq	$13, %r10
	jmp 	Linner$1
Linner$2:
	subq	$2, 8(%rsp)
	movq	%rax, %r11
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movq	%rsi, %r12
	cmpq	%rcx, %rax
	cmovb	%rbx, %rax
	cmovb	%r11, %rcx
	cmovb	%r12, %rdx
	cmovb	%rbp, %rsi
	subq	%rsi, %rdx
	subq	%rcx, %rax
	testq	$1, %rbp
	cmove	%r11, %rax
	cmove	%rbx, %rcx
	cmove	%rbp, %rdx
	cmove	%r12, %rsi
	movq	%rdi, %r12
	movq	%r10, %r13
	movq	%r8, %r14
	movq	%r9, %r15
	cmpq	%rbx, %r11
	cmovb	%r13, %rdi
	cmovb	%r12, %r10
	cmovb	%r15, %r8
	cmovb	%r14, %r9
	subq	%r10, %rdi
	subq	%r9, %r8
	testq	$1, %rbp
	cmove	%r12, %rdi
	cmove	%r13, %r10
	cmove	%r14, %r8
	cmove	%r15, %r9
	shrq	$1, %rdx
	shrq	$1, %rax
	addq	%r10, %r10
	addq	%r9, %r9
	movq	%rax, %r11
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movq	%rsi, %r12
	cmpq	%rcx, %rax
	cmovb	%rbx, %rax
	cmovb	%r11, %rcx
	cmovb	%r12, %rdx
	cmovb	%rbp, %rsi
	subq	%rsi, %rdx
	subq	%rcx, %rax
	testq	$1, %rbp
	cmove	%r11, %rax
	cmove	%rbx, %rcx
	cmove	%rbp, %rdx
	cmove	%r12, %rsi
	movq	%rdi, %r12
	movq	%r10, %r13
	movq	%r8, %r14
	movq	%r9, %r15
	cmpq	%rbx, %r11
	cmovb	%r13, %rdi
	cmovb	%r12, %r10
	cmovb	%r15, %r8
	cmovb	%r14, %r9
	subq	%r10, %rdi
	subq	%r9, %r8
	testq	$1, %rbp
	cmove	%r12, %rdi
	cmove	%r13, %r10
	cmove	%r14, %r8
	cmove	%r15, %r9
	shrq	$1, %rdx
	shrq	$1, %rax
	addq	%r10, %r10
	addq	%r9, %r9
Linner$1:
	cmpq	$0, 8(%rsp)
	jne 	Linner$2
	movq	(%rsp), %r11
	movq	%rax, (%r11)
	movq	%rcx, 8(%r11)
	movq	%rdx, 16(%r11)
	movq	%rsi, 24(%r11)
	movq	%rdi, 32(%r11)
	movq	%r8, 40(%r11)
	movq	%r10, 48(%r11)
	movq	%r9, 56(%r11)
	movq	16(%rsp), %rbx
	movq	24(%rsp), %rbp
	movq	32(%rsp), %r12
	movq	40(%rsp), %r13
	movq	48(%rsp), %r14
	movq	56(%rsp), %r15
	movq	64(%rsp), %rsp
	ret
	.type	approx, %function
approx:
	movq	%rsp, %rax
	leaq	-96(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rbx, 64(%rsp)
	movq	%rbp, 72(%rsp)
	movq	%r12, 80(%rsp)
	movq	%rax, 88(%rsp)
	movq	$62, %rbx
	leaq	32(%rsp), %rax
	movq	%rsp, %rdx
	call	Lnew_approx$1
Lapprox$1:
	movq	%r8, (%rdi)
	movq	%r10, 8(%rdi)
	movq	%rsi, 16(%rdi)
	movq	%r9, 24(%rdi)
	movq	64(%rsp), %rbx
	movq	72(%rsp), %rbp
	movq	80(%rsp), %r12
	movq	88(%rsp), %rsp
	ret
Lnew_approx$1:
	movq	$0, %rsi
	movq	$0, %r8
	movq	$0, %r9
	movq	$0, %r10
	movq	$0, %rcx
	movq	$0, %r11
	jmp 	Lnew_approx$2
Lnew_approx$3:
	decq	%rbx
	movq	(%rax,%rbx,8), %rbp
	movq	(%rdx,%rbx,8), %r12
	andq	%rcx, %rcx
	cmove	%rbp, %rsi
	cmove	%r12, %r9
	movq	%r11, %rcx
	andq	%r11, %r11
	cmove	%rbp, %r8
	cmove	%r12, %r10
	orq 	%r8, %r11
	orq 	%r10, %r11
Lnew_approx$2:
	cmpq	$0, %rbx
	jnbe	Lnew_approx$3
	movq	%r8, %r11
	orq 	%r10, %r11
	andq	%rcx, %rcx
	movq	$-1, %rcx
	cmove	%rcx, %r11
	lzcntq	%r11, %r11
	cmpq	$0, %r11
	cmove	%r8, %rsi
	cmove	%r10, %r9
	movb	%r11b, %cl
	shlq	%cl, %r8
	shlq	%cl, %r10
	movb	$64, %cl
	subb	%r11b, %cl
	shrq	%cl, %rsi
	shrq	%cl, %r9
	orq 	%rsi, %r8
	orq 	%r9, %r10
	movq	(%rax), %rsi
	movq	(%rdx), %r9
	ret
	.ident	"Jasmin Compiler @VERSION@"
	.section	".note.GNU-stack", "", %progbits
