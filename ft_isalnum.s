;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fschuber <fschuber@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/12 12:04:12 by fschuber          #+#    #+#              ;
;    Updated: 2015/06/12 12:04:15 by fschuber         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
global _ft_isalnum

	section .text

_ft_isalnum:
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

