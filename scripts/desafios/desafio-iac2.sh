#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install default-mysql-server unzip -y

cd /tmp && wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
sudo cp -R * /var/www/html/html/
sudo systemctl restart apache2
