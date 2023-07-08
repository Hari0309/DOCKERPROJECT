FROM amazonlinux:latest

#install httpd (web server)
RUN yum -y update
RUN yum -y install httpd httpd-tools

EXPOSE 80
#start web server
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
