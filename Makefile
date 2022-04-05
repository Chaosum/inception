all:	start

%:
	docker exec -it $@ bash

start:
	mkdir -p /home/mservage/data/mysql
	mkdir -p /home/mservage/data/html
	cd ./srcs/ && docker-compose up --build

stop:
	cd ./srcs/ && docker-compose down

cache:
	docker system prune -af

clean:	stop
	@echo "dockers cleaned"

fclean:	clean cache
		rm -rf /home/mservage/data/mysql /home/mservage/data/html

re:		fclean start


.PHONY:	start stop clean fclean re all cache