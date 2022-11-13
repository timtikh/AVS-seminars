	.file	"avs_idz_2.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
#service strings
.LC0:
	.string	"Enter string: "
.LC1:
	.string	"'%c' = %d  "
.LC2:
	.string	"'%d' = %d  "
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 2224
# init of counter mas
	lea	rdx, -128[rbp]
	mov	eax, 0
	mov	ecx, 13
	mov	rdi, rdx
	rep stosq
# printf("Enter string: ");
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
# taking userinput
	lea	rax, -2176[rbp]
	mov	rdi, rax
	mov	eax, 0
#call	userinput
	call	gets@PLT
# init of counter mas
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L3:
#print of user input
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -2176[rbp+rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -2176[rbp+rax]
	test	al, al
	jne	.L3
# print \n
	mov	edi, 10
	call	putchar@PLT
	mov	DWORD PTR -8[rbp], 0
# end of for cycle
	jmp	.L4
.L7:
# checking ascii code of char - if it is lowercase letter
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -2176[rbp+rax]
	cmp	al, 96
	jle	.L5
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -2176[rbp+rax]
	cmp	al, 122
	jg	.L5
# increasing counter of each lowercase letter
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -2176[rbp+rax]
	movsx	eax, al
	sub	eax, 97
	movsx	rdx, eax
	mov	edx, DWORD PTR -128[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -128[rbp+rax*4], edx
	jmp	.L6
.L5:
# checking ascii code of char - if it is uppercase letter
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -2176[rbp+rax]
	cmp	al, 64
	jle	.L6
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -2176[rbp+rax]
	cmp	al, 90
	jg	.L6
# increasing counter of each uppercase letter
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -2176[rbp+rax]
	movsx	eax, al
	sub	eax, 65
	movsx	rdx, eax
	mov	edx, DWORD PTR -128[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -128[rbp+rax*4], edx
.L6:
	add	DWORD PTR -8[rbp], 1
.L4:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	movzx	eax, BYTE PTR -2176[rbp+rax]
	test	al, al
	jne	.L7
# printing the counter for letters
	mov	DWORD PTR -8[rbp], 0
	jmp	.L8
.L10:
# checking if counter is not zero
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -128[rbp+rax*4]
	test	eax, eax
	je	.L9
# printing...
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -128[rbp+rax*4]
	mov	edx, DWORD PTR -8[rbp]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	printf@PLT
.L9:
# service for for in printing letter count (i)
	add	DWORD PTR -8[rbp], 1
.L8:
	cmp	DWORD PTR -8[rbp], 25
	jle	.L10
# printing the counter for numbers (initing count2)
	mov	QWORD PTR -2224[rbp], 0
	mov	QWORD PTR -2216[rbp], 0
	mov	QWORD PTR -2208[rbp], 0
	mov	QWORD PTR -2200[rbp], 0
	mov	QWORD PTR -2192[rbp], 0
# for cycle for counting numbers(j)
	mov	DWORD PTR -12[rbp], 0
# for cycle for counting numbers jumping to service
	jmp	.L11
.L13:
# checking ascii code of char - if it is number
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -2176[rbp+rax]
# checking ascii code of char - if it is number
	cmp	al, 47
	jle	.L12
# checking ascii code of char - if it is number
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -2176[rbp+rax]
# checking ascii code of char - if it is number
	cmp	al, 57
	jg	.L12
# increasing counter of each number (j)
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -2176[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	movsx	rdx, eax
	mov	edx, DWORD PTR -2224[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -2224[rbp+rax*4], edx
.L12:
# service for for in counting numbers (j)
	add	DWORD PTR -12[rbp], 1
.L11:
# for cycle for counting numbers service too
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	movzx	eax, BYTE PTR -2176[rbp+rax]
	test	al, al
	jne	.L13
# printing cycle for numbers
	mov	DWORD PTR -12[rbp], 0
	jmp	.L14
.L16:
# checking if counter is not zero
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -2224[rbp+rax*4]
	test	eax, eax
	je	.L15
# getting info and printing...
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	edx, DWORD PTR -2224[rbp+rax*4]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	printf@PLT
.L15:
# service for for in printing number count (j int)
	add	DWORD PTR -12[rbp], 1
.L14:
# service for for in printing number count (j int)
	cmp	DWORD PTR -12[rbp], 9
	jle	.L16
# return 0;
	mov	eax, 0
# end bracket for main
	leave
	ret
	.size	main, .-main