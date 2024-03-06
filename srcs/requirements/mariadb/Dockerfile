FROM debian:11

RUN apt-get -y update && apt-get -y upgrade && apt-get -y install vim && apt-get -y install mariadb-server
RUN mkdir -p /etc/script && touch /etc/script/script.sh

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/db_creator.sh /etc/script/script.sh

CMD ["/etc/init.d/mariadb", "start"]
CMD ["/etc/script/script.sh"]
