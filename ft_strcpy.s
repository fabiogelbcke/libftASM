;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fschuber <fschuber@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/12 12:06:33 by fschuber          #+#    #+#              ;
;    Updated: 2015/06/12 12:06:33 by fschuber         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
	global _ft_strcpy

	section .text

_ft_strcpy:
	mov r8, rdi

copy:
	mov r9b, byte [rsi]
	mov byte [r8], r9b
	inc r8
	inc rsi
	cmp byte[rsi], 0
	jg copy

end:
	mov r9b, byte [rsi]
	mov byte [r8], r9b
	mov rax, rdi
	ret


	
