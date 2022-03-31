all:	start

%:
	docker exec -it $@ bash

start:
	cd ./srcs/ && docker-compose up --build

stop:
	cd ./srcs/ && docker-compose down

clean:	stop
	@echo "dockers cleaned"

fclean:	clean

re:		fclean start

cache:
	docker system prune -af

.PHONY:	start stop clean fclean re all cache