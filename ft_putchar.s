	global _ft_putchar

	section .text

	%define WRITE 0x2000004
	%define STDOUT 1

_ft_putchar:
	mov r8, rdi
	cmp r8b, 0
	je end
	push r8
	mov rax, WRITE
	mov rdi, STDOUT
	mov rsi, rsp
	mov rdx, 1
	pop r8
	syscall

end:
	ret
