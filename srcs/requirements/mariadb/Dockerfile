FROM debian:buster

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install mariadb-server -y

RUN mkdir -p /my_data

COPY ./tools/install.sh /my_data/install.sh

EXPOSE 3306

CMD ["bash", "/my_data/install.sh"]