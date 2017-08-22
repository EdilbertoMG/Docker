#Version: 1
#T00045139 - Edilberto Marrugo Gutierrez
FROM ubuntu:14.04 
#Instalare una aplicacion que solo necesita Mysql, php5 y Nginx 
#Nginx es mi servidor web lo dejare por defecto
# php5: Lenguaje PHP
# php5-mysql: Driver de MySql para poder usar PHP

#MAINTAINER T00045139 
RUN apt-get update && apt-get -y install \
    nginx \
    php5 \
    php5-mysql
    
#Seteo las variables y creo usuario y contraseña de mysql 'root'
    
RUN echo 'mysql-server mysql-server/root_password password root' | \
    debconf-set-selections && \
    echo 'mysql-server mysql-server/root_password_again password root' | \
    debconf-set-selections

#instalo mysql-server    
RUN apt-get install -qqy mysql-server

#Meto esta sentacia dentro del contenedor
RUN echo'T00045139 - Edilberto Marrugo Gutiérrez' >/usr/share/nginx/html/index.html

#puerto 80 HTTP el que usa Nginx
EXPOSE 80
