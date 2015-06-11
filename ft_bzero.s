	global _ft_bzero

	section .text

_ft_bzero:
	mov r8, rdi
	mov r9, rsi
	cmp r9, 0
	jg set_to_zero
	ret
	
set_to_zero:
	mov byte [r8], 0
	sub r9, 1
	inc r8
	cmp r9, 0
	jg set_to_zero
	ret
