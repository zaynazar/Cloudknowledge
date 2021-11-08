FROM ubuntu:18.04
MAINTAINER m.mohdazar45@gmail.com
RUN apt-get update
RUN apt-get install apache2 -y \
zip \
unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD service apache2 start
EXPOSE 80
