##
## EPITECH PROJECT, 2018
## Makefile
## File description:
## Makefile of the project
##

NAME=	my_travis

SRC=	$(wildcard *.cpp)

OBJS=	$(SRC:.cpp=.o)

all:	$(NAME)

$(NAME):    $(OBJS)
	g++ -g -o $@ $^

%.o : %.cpp
	g++ -g -o $@ -c $<

clean:
	rm -f *.gcno
	rm -f *.gcda
	rm -f $(OBJS)
	@rm -f .#*
	@rm -f *~

fclean: clean
	rm -f $(NAME)

re:	fclean all

.PHONY: all clean fclean re
