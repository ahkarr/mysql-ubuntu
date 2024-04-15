## update and upgrade package
sudo apt update
sudo apt upgrade

## install mysql
sudo apt install mysql-server

## secure mysql
sudo mysql_secure_installation

## check service
sudo systemctl status mysql.service

## mysql login
sudo -u root mysql