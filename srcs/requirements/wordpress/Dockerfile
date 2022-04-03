FROM alpine:3.14.3

RUN apk update && apk upgrade
RUN apk add --update php7 php7-fpm bash curl mysql-client mysql

COPY ./tools/install.sh /install.sh

EXPOSE 9000

CMD [ "bash", "/install.sh"]