FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y apache2 curl git build-essential && \
    mkdir -p /var/www/html

WORKDIR /var/www/html

CMD ["apachectl", "-D", "FOREGROUND"]
