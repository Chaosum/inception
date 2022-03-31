FROM debian:buster


RUN apt-get update
RUN apt-get install bash -y
RUN apt-get install curl -y
RUN apt-get install php php-fpm php-mysqli -y

COPY ./tools/install.sh /install.sh

CMD [ "bash", "/install.sh"]