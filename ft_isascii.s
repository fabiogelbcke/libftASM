;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fschuber <fschuber@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/12 12:04:25 by fschuber          #+#    #+#              ;
;    Updated: 2015/06/12 12:04:26 by fschuber         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
global _ft_isascii

	section .text

_ft_isascii:
	cmp rdi, 0
	jl false
	cmp rdi, 127
	jg false

true:
	mov rax, 1
	ret
false:
	mov rax, 0
	ret
