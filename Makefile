NAME = libftprintf.a

SRCS = ft_printf.c ft_putchar.c ft_puthex.c ft_putnbr_un.c ft_putnbr.c ft_putptr.c

OUT = $(SRCS:.c=.o)

CC = gcc

CFLAG = -Wall -Werror -Wextra

.c.o:
				${CC} ${CFLAG} -g -c $< -o ${<:.c=.o}

$(NAME): $(OUT)
				ar rcs $(NAME) $(OUT)

all:	$(NAME)

clean:
				rm -f $(OUT) $(BOUT)

fclean: clean
				rm -f $(NAME)

re:				fclean all
