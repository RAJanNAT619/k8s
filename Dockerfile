FROM ubuntu
RUN apt install php libapache2-mod-php -y
RUN apt install php-cli -y
RUN apt install php-cgi -y
RUN systemctl restart apache2.service

COPY ./myproj/ /var/www/html
