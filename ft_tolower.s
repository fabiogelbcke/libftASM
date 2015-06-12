;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fschuber <fschuber@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/12 12:06:49 by fschuber          #+#    #+#              ;
;    Updated: 2015/06/12 12:06:50 by fschuber         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
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
