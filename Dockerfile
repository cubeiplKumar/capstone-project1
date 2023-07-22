FROM ubuntu:20.04
MAINTAINER trainings.anil@gmail.com
RUN apt-get update && \
    apt-get install -y apache2 
RUN apt-get install zip 
RUN apt-get install unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page292/seomark.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip seomark.zip
RUN cp -rvf seomark/* .
RUN rm -rf seomark seomark.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
