FROM debian:buster


RUN apt-get update
RUN apt-get install bash -y
RUN apt-get install curl -y
RUN apt-get install php-fpm -y

COPY ./tools/install.sh /install.sh

RUN bash /install.sh

CMD bash