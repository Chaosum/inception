FROM debian:buster


RUN apt-get update -y
RUN apt-get install bash -y
RUN apt-get install curl -y
RUN apt-get install default-mysql-client -y
RUN apt-get install php php-fpm -y

COPY ./tools/install.sh /install.sh

EXPOSE 9000

CMD [ "bash", "/install.sh"]