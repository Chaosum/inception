all:	start

%:
	docker exec -it $@ bash

start:
	mkdir -p /data/mysql
	mkdir -p /data/html
	mkdir -p /data/nginx
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