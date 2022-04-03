#!/bin/bash

if [[ ! -d /var/lib/mysql/my_database ]]; then

	mysql_install_db --ldata=/var/lib/mysql --user=mysql

	service mysql start
	mysql -u root -e	"CREATE DATABASE $DB_NAME ;
					CREATE USER '$USER'@'%' IDENTIFIED BY '$USER_MDP' ;
					GRANT ALL PRIVILEGES ON *.* TO '$USER'@'%' ;
					FLUSH PRIVILEGES ;
					"
	mysqladmin -u root password "$ROOT_MDP"
fi

exec sh /usr/bin/mysqld_safe