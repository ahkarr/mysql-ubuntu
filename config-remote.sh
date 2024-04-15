## config mysqld.conf
sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
sudo vim /etc/mysql/mysql.conf.d/mysqld.cnf

bind-address = 0.0.0.0
bind-address = *

## restart service again
sudo systemctl restart mysql.service

## mysql cli
sudo mysql -u root

## create database user
CREATE USER 'mysqladmin'@'192.168.1.%' IDENTIFIED BY 'Mysql@123';

## grant access
GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES, RELOAD on *.* TO 'mysqladmin'@'192.168.1.&' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'mysqladmin'@'192.168.1.%' WITH GRANT OPTION;

## flush
FLUSH PRIVILEGES;

## allow ip for remote access
sudo ufw allow from remote_IP_address to any port 3306

## allow port
sudo ufw allow 3306

## connect on remote machine
mysql -u mysqladmin -h 192.168.1.87 -p
