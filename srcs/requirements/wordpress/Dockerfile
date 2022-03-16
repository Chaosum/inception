FROM debian:buster

EXPOSE 9000

ARG USER_NAME
ARG USER_PASSWORD

RUN apt-get update
RUN apt get install php8 php8-fpm php8-mysqli bash

CMD ["bash", "/clsaad_container_data/start.sh"]