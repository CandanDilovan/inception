FROM debian:11

RUN apt-get -y update && apt-get -y upgrade && apt-get -y install wget
RUN apt-get -y install php
RUN apt-get -y install php-fpm
RUN apt-get -y install php-mysql
RUN apt-get -y install mariadb-client
RUN wget https://fr.wordpress.org/wordpress-6.4.3-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.4.3-fr_FR.tar.gz && rm wordpress-6.4.3-fr_FR.tar.gz
RUN chown -R root:root /var/www/wordpress
RUN mkdir -p /run/php
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp


EXPOSE 9000/tcp

COPY /requirements/wordpress/conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY /requirements/wordpress/tools/wp_config.sh .

RUN chmod +x wp_config.sh

CMD ./wp_config.sh && /usr/sbin/php-fpm7.4 -F