;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fschuber <fschuber@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/12 12:06:24 by fschuber          #+#    #+#              ;
;    Updated: 2015/06/12 12:06:25 by fschuber         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
	global _ft_puts

section .data

newline:   db 	0x0a
nullerror: db 	"(null)", 10, 0

	section .text


	%define WRITE 0x2000004
	%define STDOUT 1
	
	
_ft_puts:
	mov r8, rdi
	cmp r8b, 0
	je is_null

print_and_add:
	mov rax, WRITE
	mov rdi, STDOUT
	mov rsi, r8
	mov rdx, 1
	syscall
	inc r8
	cmp byte [r8], 0
	jne print_and_add
	push 10
	mov rsi ,rsp
	mov rax, WRITE
	mov rdi, STDOUT
	mov rdx, 1
	syscall
	add rsp, 8
	mov rax, 1
	ret
	

is_null:
	mov rax, WRITE
	mov rdi, STDOUT
	mov rdx, 7
	lea rsi, [rel nullerror]
	syscall
	mov rax, 1
	ret

