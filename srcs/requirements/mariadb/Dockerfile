FROM debian:buster

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install mariadb-server -y

RUN mkdir -p /my_data

COPY ./tools/install.sh /my_data/install.sh

CMD ["bash", "/my_data/install.sh"]