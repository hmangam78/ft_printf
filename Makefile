# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hgamiz-g <hgamiz-g@student.42malaga.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/05/02 10:23:45 by hgamiz-g          #+#    #+#              #
#    Updated: 2025/11/09 17:18:39 by hgamiz-g         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME= libftprintf.a

CC= cc
CFLAGS= -Wall -Werror -Wextra
RM= rm -f

# directories
SRCS_DIR = SRCS
INC_DIR = includes
OBJ_DIR = obj

# explicit list of sources
SRCS = $(SRCS_DIR)/ft_pr_hex.c $(SRCS_DIR)/ft_pr_unsigned.c \
	$(SRCS_DIR)/ft_putnbr.c $(SRCS_DIR)/ft_putstr.c \
	$(SRCS_DIR)/ft_printf.c $(SRCS_DIR)/ft_putchar.c \
	$(SRCS_DIR)/ft_putptr.c

# objects go into obj/
OBJS = $(SRCS:$(SRCS_DIR)/%.c=$(OBJ_DIR)/%.o)

# add include dir to flags
CFLAGS += -I$(INC_DIR)

$(NAME) : $(OBJS)
	@ar crs $(NAME) $(OBJS)

# ensure obj dir exists
$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

# compile objects into obj/
$(OBJ_DIR)/%.o: $(SRCS_DIR)/%.c | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

all: $(NAME)

clean:
	@$(RM) $(OBJS)
fclean: clean
	@rm -f $(NAME)
re: fclean all
.PHONY: all re clean fclean
