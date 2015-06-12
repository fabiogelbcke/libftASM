;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fschuber <fschuber@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/12 12:06:13 by fschuber          #+#    #+#              ;
;    Updated: 2015/06/12 12:06:13 by fschuber         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
	global _ft_memset

	section .text

_ft_memset:
	mov r8, rdi
	cmp rdx, 0
	jle end

set:
	mov byte [r8], sil
	inc r8
	sub rdx, 1
	cmp rdx, 0
	jg set

end:
	mov rax, rdi
	ret
