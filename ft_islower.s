;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_islower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fschuber <fschuber@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/12 12:05:35 by fschuber          #+#    #+#              ;
;    Updated: 2015/06/12 12:05:35 by fschuber         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
global _ft_islower

	section .text

_ft_islower:
	cmp rdi, 97
	jl false
	cmp rdi, 122
	jg false

	mov rax, 1
	ret

false:
	mov rax, 0
	ret
