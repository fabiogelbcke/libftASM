;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fschuber <fschuber@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/12 12:04:19 by fschuber          #+#    #+#              ;
;    Updated: 2015/06/12 12:04:20 by fschuber         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
global _ft_isalpha

	section .text

_ft_isalpha:
	cmp rdi, 97
	jge test_lower
	cmp rdi, 90
	jle test_upper
	
	mov rax, 0
	ret

test_lower:
	cmp rdi, 122
	jle true
	mov rax, 0
	ret

test_upper:
	cmp rdi, 65
	jge true
	mov rax, 0
	ret

true:
	mov rax, 1
	ret


