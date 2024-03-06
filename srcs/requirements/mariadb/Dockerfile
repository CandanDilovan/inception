FROM debian:11

RUN apt-get -y update && apt-get -y upgrade && apt-get -y install vim && apt-get -y install mariadb-server

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
