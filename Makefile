all: data db wp up

up:
	docker-compose -f ./srcs/docker-compose.yml up -d
data:
	mkdir /home/hcakmak/data
db:
	mkdir /home/hcakmak/data/db
wp:
	mkdir /home/hcakmak/data/wp

down:
	docker-compose -f ./srcs/docker-compose.yml down

.PHONY: up data db wp down
