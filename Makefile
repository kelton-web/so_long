# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ksemedo- <marvin@42lausanne.ch>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/04 11:55:07 by ksemedo-          #+#    #+#              #
#    Updated: 2022/04/05 20:53:15 by ksemedo-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = so_long.a

MLX_DIR = ./minilibx
LIB_DIR = ./libft
FRAMEWORK = -L$(MLX_DIR) -lmlx -framework OpenGL -framework AppKit
INCLUDE = -I./include -I./libft -I./minilibx

SRC = init
SRCS		= $(addsuffix .c, ${SRC})

OBJS		= ${SRCS:.c=.o}

CC			= gcc
RM			= rm -f
AR			= ar rc
RN			= ranlib

CFLAGS		= -Wall -Wextra -Werror

.c.o:
			${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

$(NAME):	${OBJS}
			${AR} ${NAME} ${OBJS}
			${RN} ${NAME}

all:		$(NAME)

clean:
			${RM} ${OBJS}

fclean:		clean
			${RM} $(NAME)

re:			fclean all

.PHONY:		all clean fclean re

