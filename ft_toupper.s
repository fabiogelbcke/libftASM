;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fschuber <fschuber@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/12 12:06:54 by fschuber          #+#    #+#              ;
;    Updated: 2015/06/12 12:06:54 by fschuber         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
	global _ft_toupper

	section .text

_ft_toupper:
	cmp rdi, 97
	jl not_lower
	cmp rdi, 122
	jg not_lower
	mov rax, rdi
	sub rax, 32
	ret

not_lower:
	mov rax, rdi
	ret
