	.file	"mini.c"
	.intel_syntax noprefix
	.text
	.globl	sort
	.type	sort, @function
sort:
	mov	eax, 11
	cmp	rdi, 3
	jg	.L1
	mov	eax, 17
.L1:
	ret
	.size	sort, .-sort
	.globl	branch
	.type	branch, @function
branch:
	mov	eax, 1
	cmp	rdi, rsi
	jg	.L5
	cmp	rdi, 3
	jle	.L10
	mov	eax, 12
	cmp	rsi, 3
	jg	.L5
.L10:
	mov	eax, 33
.L5:
	ret
	.size	branch, .-branch
	.globl	loop
	.type	loop, @function
loop:
	lea	eax, [rdi-1]
	lea	edx, [rsi-1]
	imul	eax, edi
	imul	edx, esi
	add	eax, edx
	ret
	.size	loop, .-loop
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
