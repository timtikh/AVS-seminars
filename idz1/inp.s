	.intel_syntax noprefix
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the number N for A arrange: "
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"Enter %d elements of A arrange: "
	.text
	.globl	inp
	.type	inp, @function
inp:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L3:
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, A[rip]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -8[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	mov	eax, DWORD PTR -8[rbp]
	leave
	ret
	.size	inp, .-inp
