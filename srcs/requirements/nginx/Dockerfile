FROM debian:buster

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install nginx bash openssl -y \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /etc/nginx/ssl
RUN mkdir -p /var/www/html

COPY ./tools/default /etc/nginx/sites-available/default
COPY ./tools/index.html /var/www/html/index.html

RUN openssl req -x509 -nodes -days 365 -subj "/C=FR/ST=France/L=Lyon/O=42/OU=42 Lyon/CN=mservage" -newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt;

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]