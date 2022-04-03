FROM alpine:3.14.3

RUN apk update && apk upgrade
RUN apk add --update php7 php7-fpm bash curl mysql-client mysql php-phar php7-json php7-mysqli php7-iconv

COPY ./tools/install.sh /install.sh

RUN sed -i "s|listen = .*$|listen = 9000|" /etc/php7/php-fpm.d/www.conf

EXPOSE 9000

CMD [ "bash", "/install.sh"]