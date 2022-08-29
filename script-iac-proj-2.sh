#!/bin/bash

# update linux server
apt-get update && apt-get upgrade -y

# install apache2
apt-get install apache2 -y

# install unzip
apt-get install unzip -y

# goto /tmp directory
cd /tmp

# download the web app on /tmp directory
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# unzip the web app
unzip main.zip

# change to linux-site-dio-main directory and copy recursively all application files to apache default directory
cd linux-site-dio-main 
cp -R * /var/www/html/