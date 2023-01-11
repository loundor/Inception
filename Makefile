all:
		@sudo mkdir -p /home/stissera/data/db
		@sudo mkdir -p /home/stissera/data/)wp
		@docker-compose -f srcs/docker-compose.yml up --build -d

up:
		@sudo mkdir -p /home/stissera/data/db
		@sudo mkdir -p /home/stissera/data/wp
		@docker-compose -f srcs/docker-compose.yml up -d

down:
		@docker-compose -f srcs/docker-compose.yml down

clean:
		@docker-compose -f srcs/docker-compose.yml down
		@docker stop $(docker ps -qa)
		@docker rm $(docker ps -qa)
		@docker rmi -f $(docker images -qa)
		@docker volume rm $(docker volume ls -q) 2>/dev/null
		@docker network rm $(docker network ls -q) 2>/dev/null
		@docker system prune -a --volumes
		@docker system prune -a --force

list:
		@docker ps -a
		@docker network ls
		@docker images
		@docker volume ls

.PHONY:	all up down clean info
