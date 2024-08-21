LIBFT_PATH =	./librarie/libft
LIBFT =			$(LIBFT_PATH)/libft.a

NAME =			pipex

SRCS_FILES =	pipex.c utils.c

SRCS_DIR =		sources

OBJ_DIR =		objects

HEADER =		./include/pipex.h

SRCS =			$(addprefix $(SRCS_DIR)/, $(SRCS_FILES))

OBJ =			$(SRCS:$(SRCS_DIR)/%.c=$(OBJ_DIR)/%.o)

CC =			cc
RM =			rm -rf

CFLAGS =		-Wall -Wextra -Werror

$(OBJ_DIR)/%.o:	$(SRCS_DIR)/%.c $(HEADER)
				$(CC) $(CFLAGS) -c $< -o $@

all: $(NAME)

$(NAME):		$(LIBFT) $(OBJ_DIR) $(OBJ) $(HEADER)
				$(CC) $(CFLAGS) $(OBJ) $(LIBFT) -lm -o $(NAME)

$(LIBFT):
				$(MAKE) -C $(LIBFT_PATH)

$(OBJ_DIR):
				mkdir -p $(OBJ_DIR)

clean:
				$(MAKE) -C $(LIBFT_PATH) clean
				$(RM) $(OBJ_DIR)

fclean: clean
				$(MAKE) -C $(LIBFT_PATH) fclean
				$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re libft
