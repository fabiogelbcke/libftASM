;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fschuber <fschuber@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/12 12:06:37 by fschuber          #+#    #+#              ;
;    Updated: 2015/06/12 12:06:37 by fschuber         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy

_ft_strdup:
	mov		r8,	rdi
	push	r8
	call	_ft_strlen
	inc		rax;
	mov		rdi,	rax
	call	_malloc
	cmp		rax,	0
	je		error
	pop		r8
	mov		rdi,	rax
	mov		rsi,	r8
	call	_ft_strcpy
	ret

error:
	mov		rax,	0
	ret
