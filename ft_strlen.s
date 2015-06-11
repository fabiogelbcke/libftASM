	global _ft_strlen

	section .text

_ft_strlen:
	mov r8, rdi
	mov rax, 0
	cmp byte [r8], 0
	je done

increase:
	add rax, 1
	inc r8
	cmp byte [r8], 0
	jne increase

done:
	ret
