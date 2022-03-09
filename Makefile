all:	start

start:
		cd ./srcs/ && docker compose up --build -d

stop:
		cd ./srcs/ && docker compose down

clean:	stop
		@echo "dockers cleaned"

fclean:	clean

re:		fclean start

.PHONY:	start stop clean fclean re all