global _ft_isascii

	section .text

_ft_isascii:
	cmp rdi, 97
	jge is_lower
	cmp rdi, 65
	jge is_upper
	cmp rdi, 48
	jge is_nbr
	mov rax, 0
	ret

is_lower:
	cmp rdi, 122
	jle true

is_upper:
	cmp rdi, 90
	jle true

is_nbr:
	cmp rdi, 57
	jle true
	
false:
	mov rax, 0
	ret
	
true:
	mov rax, 1
	ret

