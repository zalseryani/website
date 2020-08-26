FROM ubuntu
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install apache2 -y 
ADD . /var/www/html
ENTRYPOINT [ "apachectl","-D","FOREGROUND" ]
