	global _ft_tolower

	section .text

_ft_tolower:
	cmp rdi, 65
	jl not_upper
	cmp rdi, 90
	jg not_upper
	mov rax, rdi
	add rax, 32
	ret

not_upper:
	mov rax, rdi
	ret
