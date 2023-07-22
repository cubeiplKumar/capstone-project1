FROM centos:latest
MAINTAINER trainings.anil@gmail.com
RUN yum update -y 
RUN yum install -y httpd 
zip \ 
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page292/seomark.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip seomark.zip
RUN cp -rvf seomark/* .
RUN rm -rf seomark seomark.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
