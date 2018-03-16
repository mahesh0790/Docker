FROM ubuntu:16.04

MAINTAINER mahesh <mahesh.rockz790@gmail.com>


RUN apt-get update
RUN apt-get -y install apache2


ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80


ENTRYPOINT [ '/var/log/apache2' , '-D' , 'FOREGROUND' ]
