FROM debian:11

RUN apt-get -y update && apt-get -y upgrade && apt-get -y install wget
RUN apt-get -y install php7.3\ php-fpm\ php-mysql\ mariadb-client
RUN wget https://wordpress.org/latest.tar.gz -P /var/www
