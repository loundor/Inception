
all:
		@sudo mkdir -p /home/stissera/data/db
		@sudo mkdir -p /home/stissera/data/wp
		@docker-compose -f srcs/docker-compose.yml up --build -d

up:
		@sudo mkdir -p /home/stissera/data/db
		@sudo mkdir -p /home/stissera/data/wp
		@docker-compose -f srcs/docker-compose.yml up -d

down:
		@docker-compose -f srcs/docker-compose.yml down

clean:
		@docker-compose -f srcs/docker-compose.yml down
		@docker volume rm $(docker volume ls -q)
		@docker network rm $(docker network ls -q)
		@docker system prune -a --volumes
		@docker system prune -a --force
		rm -rf ../../data


info:
		@docker ps -a
		@docker network ls
		@docker images
		@docker volume ls

.PHONY:	all up down clean info
