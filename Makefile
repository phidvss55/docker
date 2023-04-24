run: up

up: docker-compose.yml
		docker-compose -f ./docker-compose.yml up --build -d

up-db: docker-compose.yml
	docker-compose -f ./docker-compose-db.yml up --build -d

ssh-mysql:
	docker exec -it c-mysql bash

down: docker-compose.yml
	docker-compose down --remove-orphans
