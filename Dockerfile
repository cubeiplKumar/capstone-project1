FROM centos:latest
MAINTAINER trainings.anil@gmail.com
RUN yum install -y httpd 
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Linux-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.epel.cloud|g' /etc/yum.repos.d/CentOS-Linux-*
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page292/seomark.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip seomark.zip
RUN cp -rvf seomark/* .
RUN rm -rf seomark seomark.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
