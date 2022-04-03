FROM debian:buster

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install mariadb-server -y
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /my_data

RUN sed -i 's/bind-address/bind-address = 0.0.0.0 #/i' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/install.sh /my_data/install.sh

CMD ["bash", "/my_data/install.sh"]