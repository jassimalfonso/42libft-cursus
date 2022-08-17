NAME	=	libft.a

CFLAGS	=	-Wall -Werror -Wextra

INCLUDE	=	libft.h

SRCS	=	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c \
			ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
			ft_putstr_fd.c ft_split.c ft_strchr.c ft_strdup.c ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c \
			ft_strmapi.c ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c

OBJS	=	$(SRCS:.c=.o)

SRCS_B	=	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c

OBJS_B	=	$(SRCS_B:.c=.o)

ARC		=	ar -rcs

RM		=	rm -rf

all: $(NAME)
$(NAME): $(OBJS)
	@$(ARC) $(NAME) $(OBJS)

clean:
	@$(RM) $(OBJS) $(OBJS_B) 

fclean:
	@$(RM) $(NAME) $(OBJS) $(OBJS_B)

re: fclean all

bonus:
	$(NAME): $(OBJS_B)
	@$(ARC) $(NAME) $(OBJS_B)

norm:
	@norminette -R CheckForbiddenSourceHeader *.c
	
.PHONY: bonus all clean fclean re norm