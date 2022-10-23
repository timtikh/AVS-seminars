	.intel_syntax noprefix	#definition of assembler
	.text			#section start
	.globl	A		#definition of A Array 
	.bss
	.align 32
	.type	A, @object
	.size	A, 4194304	#memory for A
A:
	.zero	4194304
	.globl	B		#definition of B array
	.align 32
	.type	B, @object
	.size	B, 4194304	#memory for B
B:
	.zero	4194304
	.section	.rodata
.LC0:
	.string	"B is empty"	#system message
	.text			#code section
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	QWORD PTR -32[rbp], rsi
	mov	eax, 0
	call	inp@PLT
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 1
	jmp	.L2
.L4:
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, A[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, A[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, A[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, B[rip]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -4[rbp], 1
.L3:
	add	DWORD PTR -8[rbp], 1
.L2:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -12[rbp]
	jl	.L4
	cmp	DWORD PTR -4[rbp], 0
	je	.L5
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	out@PLT
	jmp	.L6
.L5:
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L6:
	mov	eax, 0
	leave
	ret
	.size	main, .-main
