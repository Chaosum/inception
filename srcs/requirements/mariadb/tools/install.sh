#!/bin/bash

if [[! -d /var/lib/mysql/my_database]]; then

service mysql start

mysql -u root -e	"CREATE DATABASE my_database ;
					CREATE USER '$USER' @ '%' IDENTIFIED BY '$USER_MDP' ;
					GRANT ALL PRIVILEGES ON *.* TO '$USER' @ '%' ;
					FLUSH PRIVILEGES ;
					"
mysqladmin -u root password "$ROOT_MDP"

service mysql stop

fi

sh /usr/bin/mysqld_safe