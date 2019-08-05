FROM centos
yum install -y httpd && yum clean all
COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
