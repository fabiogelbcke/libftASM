	global _ft_cat

	section .text

	%define READ 0x2000003
	%define WRITE 0x2000004
	%define STDOUT 1
	%define BUFF_SIZE 1024

_ft_cat:
	cmp rdi, -1
	jle error
	mov r8, rdi

read:	
	mov rax, READ
	lea rsi, [rel buffer]
	mov rdx, 255
	mov rdi, r8
	syscall
	cmp rax, -1
	je error
	mov r9, rax
write:
	mov rax, WRITE
	mov rdi, STDOUT
	lea rsi, [rel buffer]
	mov rdx, r9
	syscall
	cmp r9, 0
	jg read

end:
	ret
	
error:
	mov rax, WRITE
	mov rdi, STDOUT
	mov rdx, errormsg.len
	lea rsi, [rel errormsg]

	section .data

buffer:	 times 256 db 0
errormsg: db "There was an error", 10
.len:	equ $ - errormsg
