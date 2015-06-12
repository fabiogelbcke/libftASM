;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fschuber <fschuber@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/12 12:05:46 by fschuber          #+#    #+#              ;
;    Updated: 2015/06/12 12:05:47 by fschuber         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
global _ft_isprint

	section .text

_ft_isprint:
	cmp rdi, 32
	jl false
	cmp rdi, 126
	jg false
	mov rax, 1
	ret

false:
	mov rax, 0
	ret
	
