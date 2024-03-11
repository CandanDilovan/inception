build:
	sudo docker compose --env-file srcs/.env -f srcs/docker-compose.yml build
up:
	sudo docker compose -f srcs/docker-compose.yml up -d
ps:
	sudo docker compose -f srcs/docker-compose.yml ps
logs:
	sudo docker compose -f srcs/docker-compose.yml logs
down:
	sudo docker compose -f srcs/docker-compose.yml down
clean:
	sudo docker system prune -a -f

