	.file	"mini.c"
	.intel_syntax noprefix
	.text
	.globl	sort
	.type	sort, @function
sort:
	cmp	rdi, 3
	mov	edx, 11
	mov	eax, 17
	cmovg	rax, rdx
	ret
	.size	sort, .-sort
	.globl	branch
	.type	branch, @function
branch:
	cmp	rdi, rsi
	mov	edx, 12
	mov	eax, 1
	cmovle	rax, rdx
	ret
	.size	branch, .-branch
	.globl	loop
	.type	loop, @function
loop:
	mov	eax, esi
	lea	esi, [rdi-2+rsi]
	imul	edi, eax
	lea	eax, [rsi+rdi]
	ret
	.size	loop, .-loop
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
