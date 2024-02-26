FROM ubuntu
RUN apt update
RUN apt install -y apache2
ADD ./rolebase.html /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
ENV name Production
