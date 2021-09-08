FROM centos:latest
RUN  yum install httpd -y
RUN  echo hello > /var/www/html/index.html
CMD  ["/usr/sbin/httpd","-D","FOREGROUND"]
