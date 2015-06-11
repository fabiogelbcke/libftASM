	global _ft_strcat

	section .text

_ft_strcat:
	mov r8, rdi
	mov r9, rsi
	mov r10, r8
	cmp byte [r8], 0
	je append

go_to_final:
	inc r8
	cmp byte [r8], 0
	jne go_to_final

append:
	cmp byte [r9], 0
	je end
	mov r11b, byte [r9]
	mov byte [r8], r11b
	inc r9
	inc r8
	cmp byte [r9], 0
	jne append

end:
	mov byte [r8], 0
	mov rax, r10
	ret
