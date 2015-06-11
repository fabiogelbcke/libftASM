	global _ft_puts

	section .text


	%define WRITE 0x2000004
	%define STDOUT 1
	
	
_ft_puts:
	cmp byte [rdi], 0
	je is_null
	mov r8, rdi
	cmp byte [r8], 0
	jne print_and_add

print_and_add:
	mov rax, WRITE
	mov rdi, STDOUT
	mov rsi, r8
	mov rdx, 1
	syscall
	inc r8
	cmp byte [r8], 0
	jne print_and_add
	mov rax, WRITE
	mov rdi, STDOUT
	mov rdx, newline.len
	lea rsi, [rel newline]
	syscall
	mov rax, 1
	ret

is_null:
	mov rax, WRITE
	mov rdi, STDOUT
	lea rsi, [rel nullmsg]
	mov rdx, nullmsg.len
	syscall
	mov rax, 1
	ret

	section .data
	
nullmsg:	db "(null)", 10
.len:		equ $ - nullmsg
newline:	db 10
.len:		equ $ - newline
