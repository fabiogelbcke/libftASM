NAME = libfts.a
SRC_ASM = 	ft_isupper.s \
		ft_isascii.s \
OBJ_ASM = $(SRC_ASM:.s=.o)
FLAGS = -Wall -Werror -Wextra
CC_ASM = nasm
CC_C = gcc
INC = -I inc
ASM_FLAGS = -f macho64

all :		$(NAME)

$(NAME) : 	$(OBJ_ASM)
	@ar rc $(NAME) $(OBJ_ASM)
	@ranlib $(NAME)

#$(OBJ_ASM) :	$(SRC_ASM)
#	nasm -f macho64 -o $(OBJ_ASM) $(SRC_ASM)

%.o : %.s
	nasm $(ASM_FLAGS) -o $@ $<

#test :		$(NAME)
#	$(CC_C) $(FLAGS) -L . -lfts  $(INC) main.c -o test

clean :
	rm -f *.o main.o

fclean : clean
	rm -f libfts.a

re : fclean all

.PHONY: clean fclean re
