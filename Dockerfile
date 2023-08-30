FROM ubuntu
RUN echo "Hi Hello" > /tmp/testfile
RUN apt update -y
RUN apt install tree -y
RUN apt install php libapache2-mod-php
RUN systemctl restart apache2.service

COPY ./myproj/ /var/www/html
