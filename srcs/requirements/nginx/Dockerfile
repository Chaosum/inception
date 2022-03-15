FROM debian:buster

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install nginx -y

CMD ["mkdir", "/var/www/test"]
CMD ["echo", "<!doctype html>\n<html>\n<head>\n    <meta charset=\"utf-8\">\n    <title>Hello, Nginx!</title>\n</head>\n<body>\n    <h1>Hello, Nginx!</h1>\n    <p>We have just configured our Nginx web server on Ubuntu Server!</p>\n</body>\n</html>", ">", "/var/www/test/index.html"]

CMD ["echo", "\nserver {n       listen 81;       listen [::]:81;\n       server_name example.ubuntu.com;\n       root /var/www/tutorial;\n       index index.html;\n       location / {\n               try_files $uri $uri/ =404;\n       }\n}", ">", "/etc/nginx/sites-enabled/test"]

CMD ["service", "nginx", "restart"]