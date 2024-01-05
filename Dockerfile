#FROM httpd:2.4
#RUN mkdir -p /var/www/html

FROM php:latest
RUN apt-get update && apt-get install -y libfcgi-bin
CMD ["php-fpm", "-F"]