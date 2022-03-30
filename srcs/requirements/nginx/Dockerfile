FROM debian:buster

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install nginx bash -y

COPY ./tools/default /etc/nginx/sites-available/default

COPY ./tools/default /etc/nginx/sites-enabled/default

COPY ./tools/index.html /var/www/html/index.html

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]