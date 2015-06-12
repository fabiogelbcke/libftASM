	global _ft_putsub
	section .text

	%define WRITE 0x2000004
	%define STDOUT 1

_ft_putsub:
	mov r8, rdi
	cmp r8b, 0
	je end
	mov r9, rsi
	mov r10, rdx
	cmp r9, 0
	jl end
	je print_and_add

go_to_index:
	sub r9, 1
	inc r8
	cmp r9, 0
	jg go_to_index
	
print_and_add:
	cmp r10, 0
	jle end
	sub r10, 1
	mov rax, WRITE
	mov rdi, STDOUT
	mov rsi, r8
	mov rdx, 1
	syscall
	inc r8
	cmp byte [r8], 0
	jne print_and_add

end:
	ret
