#!/bin/bash

sudo apt update
sudo apt install nginx mariadb-server mariadb-client php-fpm php-mysql

sudo mysql_secure_installation

#pengisian database 
sudo mysql -uroot -proot -e "CREATE DATABASE tes;"

sudo mysql -uroot -proot -e "CREATE USER 'user'@'localhost' IDENTIFIED BY 'pass';"

sudo mysql -uroot -proot -e "GRANT ALL PRIVILEGES ON tes.* to user@'localhost';"

sudo mysql -uroot -proot -e "FLUSH PRIVILEGES;"


#bikin file di directory /etc/nginx/sites-available/wordpress untuk mengisi config
#file config dibuat terpisah diluar script bash
sudo cp /home/peter/config /etc/nginx/sites-available/wordpress



#penghapusan config default dan pemindahan config yang sudah dimodif 
sudo rm /etc/nginx/sites-enabled/default
sudo ln -s /etc/nginx/sites-available/wordpress /etc/nginx/sites-enabled/wordpress


