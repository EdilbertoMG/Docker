#Version: 1
#T00045139 - Edilberto Marrugo Gutierrez
 
FROM ubuntu:14.04 
#MAINTAINER T00045139 
RUN apt-get updtae && apt-get install -y nginx 
RUN echo 'T00045139-Edilberto Marrugo Gutiérrez' >/usr/share/ngin/html/index.html 
EXPOSE 80 
