FROM ubuntu:18.04

MAINTAINER taroberts26

RUN apt-get update && apt-get install -y apache2 && apt-get clean && rm -rf /var/lib/apt/list/*

WORKDIR /var/www/html

COPY index.html . 

EXPOSE 80
CMD apachectl -D FOREGROUND

#SHELL ["/bin/sh", "-c"]
#CMD ["systemctl start apache2"]

