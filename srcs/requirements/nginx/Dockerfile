FROM debian:11

RUN apt-get -y update && apt-get -y install nginx && apt-get -y install vim
RUN mkdir -p /etc/nginx/ssl && apt-get -y install openssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=ALSACE/L=MULHOUSE/O=42/OU=42/CN=dcandan.42.fr/UID=dcandan"

COPY /requirements/nginx/conf/default etc/nginx/sites-available/default

EXPOSE 443/tcp

CMD ["nginx", "-g", "daemon off;"]
