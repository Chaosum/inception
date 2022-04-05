#!/bin/bash

if [[ ! -d /var/lib/mysql/my_database ]]; then

	mysql_install_db --ldata=/var/lib/mysql --user=mysql
	service mysql start
	mysql -u root -e	"CREATE DATABASE $DB_NAME ;
					CREATE USER '$USER'@'%' IDENTIFIED BY '$USER_MDP' ;
					GRANT ALL PRIVILEGES ON *.* TO '$USER'@'%' ;
					UPDATE mysql.user SET plugin = '' WHERE user = 'root' AND host = 'localhost';
					FLUSH PRIVILEGES ;
					"
	mysqladmin -u root password "$ROOT_MDP"
	service mysql stop
fi

exec /usr/bin/mysqld_safe