#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fschuber <fschuber@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/12 11:44:12 by fschuber          #+#    #+#              #
#    Updated: 2015/06/12 12:09:38 by fschuber         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libfts.a
SRC_ASM =	ft_isupper.s \
	ft_isascii.s \
	ft_islower.s \
	ft_isalnum.s \
	ft_isalpha.s \
	ft_isdigit.s \
	ft_isprint.s \
	ft_tolower.s \
	ft_toupper.s \
	ft_puts.s \
	ft_bzero.s \
	ft_strcat.s \
	ft_strlen.s \
	ft_memset.s \
	ft_memcpy.s \
	ft_strdup.s \
	ft_cat.s \
	ft_strcpy.s \
	ft_putchar.s \
	ft_putsub.s \
	ft_isnum.s \

OBJ_ASM = $(SRC_ASM:.s=.o)
FLAGS = -Wall -Werror -Wextra
NASM = nasm
ASM_FLAGS = -f macho64
AR = ar
RANLIB = ranlib

all : $(NAME)

$(NAME) : $(OBJ_ASM)
	$(AR) rc $(NAME) $(OBJ_ASM)
	$(RANLIB) $(NAME)

%.o : %.s
	$(NASM) $(ASM_FLAGS) -o $@ $<

test: all
	gcc -o test main.c libfts.a

moulitest:
	git clone https://github.com/yyang42/moulitest.git

clean :
	rm -f *.o main.o

fclean : clean
	rm -f libfts.a test

re : fclean all

.PHONY: clean fclean re
