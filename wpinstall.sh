#!/bin/bash

sudo apt update
sudo apt install nginx mariadb-server mariadb-client php-fpm php-mysql

sudo mysql_secure_installation

#pengisian database masih menunggu
#
#
#
#
#
#

#bikin file di directory /etc/nginx/sites-available/wordpress untuk mengisi config
#file config dibuat terpisah diluar script bash

sudo touch /etc/nginx/sites-available/wordpress
sudo cp /home/peter/config /etc/nginx/sites-available/wordpress


