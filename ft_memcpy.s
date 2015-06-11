	global _ft_memcpy

	section .text

_ft_memcpy:
	mov r8, rdi
	cmp rdx, 0
	jle end

copy:
	mov r9b, byte [rsi]
	mov byte [r8], r9b
	inc r8
	inc rsi
	sub rdx, 1
	cmp rdx, 0
	jg copy

end:
	mov rax, rdi
	ret


	
