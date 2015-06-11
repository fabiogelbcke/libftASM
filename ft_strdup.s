	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	
	section .text

_ft_strdup:
	mov r10, rdi
	call _ft_strlen
	mov rdi, rax
	add rdi, 1
	call _malloc
	mov r8, rax
	cmp byte [r10], 0
	je end

copy:
	mov r9b, byte[r10]
	mov byte[r8], r9b
	inc r10
	inc r8
	cmp byte[r10], 0
	jne copy

end:
	ret
