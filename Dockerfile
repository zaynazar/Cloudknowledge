FROM ubuntu:18.04
MAINTAINER m.mohdazar45@gmail.com
RUN apt-get update
RUN apt-get install apache2 -y \
zip \
unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page272/infinite-loop.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip infinite-loop.zip
RUN cp -rvf 2117_infinite_loop/* .
RUN rm -rf 2117_infinite_loop infinite-loop.zip
EXPOSE 80
