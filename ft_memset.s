	global _ft_memset

	section .text

_ft_memset:
	mov r8, rdi
	cmp rdx, 0
	jle end

set:
	mov byte [r8], sil
	inc r8
	sub rdx, 1
	cmp rdx, 0
	jg set

end:
	mov rax, rdi
	ret
