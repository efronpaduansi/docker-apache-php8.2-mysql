FROM php:8.2-apache

RUN apt-get update
RUN apt-get install -y git libzip-dev zip unzip npm
RUN docker-php-ext-install pdo pdo_mysql zip
RUN a2enmod rewrite
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# install lets encrypt
RUN apt-get -y install certbot python3-certbot-apache
