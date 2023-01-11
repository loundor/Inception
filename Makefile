DIRS	=	/home/stissera/data/{db,wp,bonus}
all:
		@sudo mkdir -p $(DIRS)
		@docker-compose -f srcs/docker-compose.yml up --build -d

up:
		@sudo mkdir -p $(DIRS)
		@docker-compose -f srcs/docker-compose.yml up -d

down:
		@docker-compose -f srcs/docker-compose.yml down

clean:
		@chmod 744 clean.sh
		@./clean.sh

info:
		@docker ps -a
		@docker network ls
		@docker images
		@docker volume ls

.PHONY:	all up down clean info
