FROM centos
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page274/resto.zip
WORKDIR /var/www/html
RUN unzip resto.zip 
RUN rm -rf resto.zip &&\
    cp -rf resto/* . &&\
    rm -rf resto
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
