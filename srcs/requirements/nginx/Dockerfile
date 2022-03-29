FROM debian:buster

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install nginx bash -y

CMD ["nginx", "-g", "daemon off;"]
# CMD ["/bin/bash"]