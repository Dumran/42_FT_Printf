NAME = libftprintf.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror 

SRCS = ft_printf.c ft_funcs1.c ft_funcs2.c

OBJS = $(SRCS:.c=.o)
			
all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)
		
fclean:	clean
	$(RM) $(NAME)
		
re: fclean all
