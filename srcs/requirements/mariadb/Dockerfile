FROM debian:11

RUN apt-get -y update && apt-get -y upgrade && apt-get -y install vim && apt-get -y install mariadb-server

COPY /requirements/mariadb/conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY /requirements/mariadb/tools/db_creator.sh .

CMD ./db_creator.sh