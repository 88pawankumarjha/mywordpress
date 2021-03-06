FROM centos:latest
RUN yum -y update && yum -y install php-gd php php-mysql httpd
ADD code/html /var/www/html
COPY httpd.conf /etc/httpd/conf/httpd.conf
RUN chown -R apache:apache /var/www/html
ENV MY_DB_NAME=test12 MY_DB_USER=tes1t MY_DB_PASS=test MY_DB_HOST=test
cmd ["apachectl","-D","FOREGROUND"]
