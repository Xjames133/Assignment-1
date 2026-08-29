	.file	"mini.c"
	.intel_syntax noprefix
	.text
	.globl	sort
	.type	sort, @function
sort:
	cmp	rdi, 5
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
	lea	eax, [rdi-2+rsi]
	imul	edi, esi
	add	eax, edi
	ret
	.size	loop, .-loop
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.3) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
