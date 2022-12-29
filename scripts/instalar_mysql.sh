#!/bin/bash

sudo apt install default-mysql-server -y

sudo systemctl status mysqld

mysql -u root -p