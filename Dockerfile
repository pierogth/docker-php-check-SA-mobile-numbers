FROM php:8.2-fpm

WORKDIR /app

RUN apt-get update && apt-get install -y libmcrypt-dev git libzip-dev \
     && docker-php-ext-install zip

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY . /app
RUN php /usr/local/bin/composer install
ENTRYPOINT php -S 0.0.0.0:9999

EXPOSE 9999