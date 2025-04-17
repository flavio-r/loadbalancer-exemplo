FROM php:7.4-apache

ENV WORKDIR=/var/www/html

WORKDIR ${WORKDIR}

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN a2enmod rewrite

RUN mkdir -p /var/cpanel/php/sessions/ea-php74
RUN chmod -R 777 /var/cpanel/php/sessions/ea-php74

COPY ./public ./