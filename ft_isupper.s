;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fschuber <fschuber@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/12 12:06:00 by fschuber          #+#    #+#              ;
;    Updated: 2015/06/12 12:06:01 by fschuber         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
global _ft_isupper

	section .text

_ft_isupper:
	cmp rdi, 65
	jl false
	cmp rdi, 90
	jg false

	mov rax, 1
	ret

false:
	mov rax, 0
	ret
