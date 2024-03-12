up:
	sudo docker compose --env-file srcs/.env -f srcs/docker-compose.yml up -d --build
ps:
	sudo docker compose -f srcs/docker-compose.yml ps
logs:
	sudo docker compose -f srcs/docker-compose.yml logs
down:
	sudo docker compose -f srcs/docker-compose.yml down
clean:
	sudo rm -rf ../data
	mkdir -p ../data
	mkdir -p ../data/wordpress
	mkdir -p ../data/mariadb

fclean:
	sudo docker system prune -a -f

