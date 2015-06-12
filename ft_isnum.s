;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isnbr.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fschuber <fschuber@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/12 12:07:45 by fschuber          #+#    #+#              ;
;    Updated: 2015/06/12 12:09:12 by fschuber         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

	global _ft_isnum

	section .text

_ft_isnum:
	cmp rdi, 48
	jl false
	cmp rdi, 57
	jg false

true:
	mov rax, 1
	ret

false:
	mov rax, 0
	ret