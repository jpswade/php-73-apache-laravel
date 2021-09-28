FROM php:7.3-apache
MAINTAINER James Wade <jpswade@gmail.com>

# Install gd, iconv, mbstring, mysql, soap, sockets, zip, and zlib extensions
# see example at https://hub.docker.com/_/php/
RUN apt-get update && apt-get install -y \
        libbz2-dev \
        libfreetype6-dev \
        libgd-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libxml2-dev \
        libzip-dev \
        zlib1g-dev \
        git \
    && docker-php-ext-install iconv mbstring mysqli soap sockets zip bcmath \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd

# enable mod_rewrite
RUN a2enmod rewrite

# make the webroot a volume
VOLUME /var/www/html/
WORKDIR /var/www/html/

EXPOSE 80

#EOF
