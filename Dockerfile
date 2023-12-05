#INSTALL ubuntu image
FROM ubuntu:latest
#get the updates and install apache2 php libapache2-mod-php
RUN apt-get update
RUN apt-get install apache2 php libapache2-mod-php -y
#copy all file from current directory to /var/www/html
ADD . /var/www/html
#Expose port 80
EXPOSE 80
#Restart apache2
ENTRYPOINT apachectl -D FOREGROUND

