##
## Makefile for  in /home/mart_4/rendu/asm_minilibc
##
## Made by Thomas Martins
## Login   <mart_4@epitech.net>
##
## Started on  Thu Mar 10 11:58:27 2016 Thomas Martins
## Last update Fri Mar 25 02:47:27 2016 Thomas Martins
##

SRC	=	src/strlen.S	\
		src/strchr.S	\
		src/memset.S	\
		src/memcpy.S	\
		src/memmove.S	\
		src/rindex.S	\
		src/strcmp.S	\
		src/strncmp.S	\
		src/strcspn.S	\
		src/strpbrk.S	\
		src/strstr.S	\
		src/strcasecmp.S

OBJ	=	$(SRC:.S=.o)

NAME	=	libasm_$(HOSTTYPE).so

LDFLAGS	=	-shared -fPIC

all:		$(NAME)

$(NAME):	$(OBJ)
		ld -o $(NAME) $(OBJ) $(LDFLAGS)
		ln -fs $(NAME) libasm.so

.S.o:
		nasm -f elf64 -o $*.o $<

clean:
		rm -f $(OBJ)

fclean:		clean
		rm -f $(NAME)
		rm -f libasm.so

re:		fclean all
