;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fschuber <fschuber@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/12 12:03:57 by fschuber          #+#    #+#              ;
;    Updated: 2015/06/12 12:03:59 by fschuber         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
	global _ft_bzero

	section .text

_ft_bzero:
	mov r8, rdi
	mov r9, rsi
	cmp r9, 0
	jg set_to_zero
	ret
	
set_to_zero:
	mov byte [r8], 0
	sub r9, 1
	inc r8
	cmp r9, 0
	jg set_to_zero
	ret
