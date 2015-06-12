;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fschuber <fschuber@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/12 12:04:41 by fschuber          #+#    #+#              ;
;    Updated: 2015/06/12 12:04:42 by fschuber         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
global _ft_isdigit

	section .text

_ft_isdigit:
	cmp rdi, 48
	jl false
	cmp rdi, 57
	jg false
	mov rax, 1
	ret

false:
	mov rax, 0
	ret
