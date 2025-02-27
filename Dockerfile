FROM php:8.0-apache
RUN apt-get update && \
    apt-get install -y \
        libpq-dev \
        && \
    docker-php-ext-install pdo_pgsql
EXPOSE 80