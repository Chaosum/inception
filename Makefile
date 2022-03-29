all:	start

%:
	sudo docker exec -it $@ bash

start:
	cd ./srcs/ && sudo docker-compose up --build

stop:
	cd ./srcs/ && sudo docker-compose down

clean:	stop
	@echo "dockers cleaned"

fclean:	clean

re:		fclean start

emptycache:
	sudo docker system prune -af

.PHONY:	start stop clean fclean re all