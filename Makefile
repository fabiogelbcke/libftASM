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
clean :
	rm -f *.o main.o

fclean : clean
	rm -f libfts.a

re : fclean all

.PHONY: clean fclean re
