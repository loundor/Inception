
all:
		@mkdir -p /home/stissera/data/db
		@mkdir -p /home/stissera/data/wp
		@mkdir -p /home/stissera/data/bonus
		@docker-compose -f srcs/docker-compose.yml up --build -d

up:
		@docker-compose -f srcs/docker-compose.yml up -d

down:
		@docker-compose -f srcs/docker-compose.yml down

clean:
		@docker-compose -f srcs/docker-compose.yml down
		@docker rmi -f srcs_site
		@docker rmi -f srcs_adminer
		@docker rmi -f srcs_nginx
		@docker rmi -f srcs_wordpress
		@docker rmi -f srcs_mariadb
		#docker rmi -f srcs_vsftp
		@docker system prune -f -a --volumes
		@docker system prune -f -a --force
		sudo rm -rf ../../data

info:
		@docker ps -a
		@docker network ls
		@docker images
		@docker volume ls

.PHONY:	all up down clean info
