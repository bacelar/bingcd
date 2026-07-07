	.att_syntax
	.text
	.p2align	5
	.global	_inner
	.global	_c_approx_new
	.global	_c_approx
_inner:
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
	movq	%rdi, 8(%rsp)
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
	subq	$2, (%rsp)
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
	cmpq	$0, (%rsp)
	jne 	Linner$2
	movq	8(%rsp), %r11
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
_c_approx_new:
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
Lc_approx_new$1:
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
_c_approx:
	movq	%rsp, %rax
	leaq	-88(%rsp), %rsp
	andq	$-8, %rsp
	movq	%r13, 64(%rsp)
	movq	%r14, 72(%rsp)
	movq	%rax, 80(%rsp)
	movq	$0, %rax
	movq	$0, %rdx
	movq	$0, %r8
	movq	$0, %r9
	movq	$0, %rsi
	movq	$0, %rcx
	movq	56(%rsp), %r10
	movq	24(%rsp), %r11
	andq	%rsi, %rsi
	cmove	%r10, %rax
	cmove	%r11, %r8
	movq	%rcx, %rsi
	andq	%rcx, %rcx
	cmove	%r10, %rdx
	cmove	%r11, %r9
	orq 	%rdx, %rcx
	orq 	%r9, %rcx
	movq	48(%rsp), %r10
	movq	16(%rsp), %r11
	andq	%rsi, %rsi
	cmove	%r10, %rax
	cmove	%r11, %r8
	movq	%rcx, %rsi
	andq	%rcx, %rcx
	cmove	%r10, %rdx
	cmove	%r11, %r9
	orq 	%rdx, %rcx
	orq 	%r9, %rcx
	movq	40(%rsp), %r10
	movq	8(%rsp), %r11
	andq	%rsi, %rsi
	cmove	%r10, %rax
	cmove	%r11, %r8
	movq	%rcx, %rsi
	andq	%rcx, %rcx
	cmove	%r10, %rdx
	cmove	%r11, %r9
	orq 	%rdx, %rcx
	orq 	%r9, %rcx
	movq	32(%rsp), %r10
	movq	(%rsp), %r11
	andq	%rsi, %rsi
	cmove	%r10, %rax
	cmove	%r11, %r8
	andq	%rcx, %rcx
	cmove	%r10, %rdx
	cmove	%r11, %r9
	movq	%rdx, %r10
	orq 	%r9, %r10
	lzcntq	%r10, %rcx
	negq	%rcx
	andb	$63, %cl
	shldq	%cl, %rax, %rdx
	shldq	%cl, %r8, %r9
	movq	32(%rsp), %r13
	movq	(%rsp), %r14
	movq	%rdx, (%rdi)
	movq	%r13, 8(%rdi)
	movq	%r9, 16(%rdi)
	movq	%r14, 24(%rdi)
	movq	64(%rsp), %r13
	movq	72(%rsp), %r14
	movq	80(%rsp), %rsp
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
	movq	%rbx, %rcx
	orq 	%rbp, %rcx
	lzcntq	%rcx, %rcx
	negq	%rcx
	andb	$63, %cl
	shldq	%cl, %r13, %rbx
	shldq	%cl, %r14, %rbp
	ret
	.ident	"Jasmin Compiler @VERSION@"
