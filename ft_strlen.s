;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fschuber <fschuber@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/12 12:06:43 by fschuber          #+#    #+#              ;
;    Updated: 2015/06/12 12:06:43 by fschuber         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
	global _ft_strlen

	section .text

_ft_strlen:
	mov r8, rdi
	mov rax, 0
	cmp byte [r8], 0
	je done

increase:
	add rax, 1
	inc r8
	cmp byte [r8], 0
	jne increase

done:
	ret
