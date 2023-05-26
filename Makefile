SRCS 	= srcs/ft_atoi.c \
		  srcs/ft_bzero.c \
		  srcs/ft_calloc.c \
		  srcs/ft_itoa.c \
		  srcs/ft_split.c \
		  srcs/ft_tolower.c \
		  srcs/ft_toupper.c \
		  srcs/is_functions/ft_isalnum.c \
		  srcs/is_functions/ft_isalpha.c \
		  srcs/is_functions/ft_isascii.c \
		  srcs/is_functions/ft_isdigit.c \
		  srcs/is_functions/ft_isprint.c \
		  srcs/mem_functions/ft_memchr.c \
		  srcs/mem_functions/ft_memcmp.c \
		  srcs/mem_functions/ft_memcpy.c \
		  srcs/mem_functions/ft_memmove.c \
		  srcs/mem_functions/ft_memset.c \
		  srcs/print_functions/ft_putchar_fd.c \
		  srcs/print_functions/ft_putendl_fd.c \
		  srcs/print_functions/ft_putnbr_fd.c \
		  srcs/print_functions/ft_putstr_fd.c \
		  srcs/str_functions/ft_strchr.c \
		  srcs/str_functions/ft_strdup.c \
		  srcs/str_functions/ft_striteri.c \
		  srcs/str_functions/ft_strjoin.c \
		  srcs/str_functions/ft_strlcat.c \
		  srcs/str_functions/ft_strlcpy.c \
		  srcs/str_functions/ft_strlen.c \
		  srcs/str_functions/ft_strmapi.c \
		  srcs/str_functions/ft_strncmp.c \
		  srcs/str_functions/ft_strnstr.c \
		  srcs/str_functions/ft_strrchr.c \
		  srcs/str_functions/ft_strtrim.c \
		  srcs/str_functions/ft_substr.c 

BSRCS	= srcs/lst_functions/ft_lstadd_back.c \
		  srcs/lst_functions/ft_lstadd_front.c \
		  srcs/lst_functions/ft_lstclear.c \
		  srcs/lst_functions/ft_lstdelone.c \
		  srcs/lst_functions/ft_lstiter.c \
		  srcs/lst_functions/ft_lstlast.c \
		  srcs/lst_functions/ft_lstmap.c \
		  srcs/lst_functions/ft_lstnew.c \
		  srcs/lst_functions/ft_lstsize.c

OBJS 	= ${SRCS:.c=.o}

BOBJS	= ${BSRCS:.c=.o}

NAME 	= libft.a

CC	 	= gcc

RM		= rm -f

CFLAGS 	= -Wall -Werror -Wextra -g

ifdef BONUS
	SRCS += ${BSRCS}
endif

all: 		${NAME}

.c.o:
			${CC} ${CFLAGS} -c $< -o ${<:.c=.o}
	
${NAME}:	${OBJS}
			ar rc ${NAME} ${OBJS}
			ranlib ${NAME}
bonus:		
			make BONUS=1
clean: 
			${RM} ${OBJS} ${BOBJS}

fclean: 	clean
			${RM} ${NAME}

re: 		fclean all

.PHONY: 	all clean fclean re
