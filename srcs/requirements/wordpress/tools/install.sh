#!/bin/bash

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

wp core download --allow-root --user=$ROOT --path=$DB_PATH

#cd $DB_PATH

wp config create --allow-root --dbname=$DB_NAME --dbuser=$USER --dbpass=$USER_MDP --path=$DB_PATH

wp core install --allow-root --url="https://mservage.42.fr/" --title="Inception" --admin_user=$ROOT --admin_password=$ROOT_MDP

wp user create --allow-root $USER --user_pass=$USER_MDP --role=editor

exec php