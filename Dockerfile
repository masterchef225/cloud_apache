FROM ubuntu:12.04
RUN apt-get update
RUN apt-get install -y apache2
COPY index.html  /var/www
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]

