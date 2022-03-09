FROM debian:buster

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install mariadb-server -y

RUN mkdir -p /my_data

# COPY ./tools/file /my_data/file

EXPOSE 3306

CMD ["mysqld"]