global _ft_isupper

	section .text

_ft_isupper:
	cmp rdi, 101
	jl false
	cmp rdi, 132
	jg false

	mov rax, 1
	ret

false:
	mov rax, 0
	ret
