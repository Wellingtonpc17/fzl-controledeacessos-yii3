ARG PHP_VERSION=8.2
FROM php:${PHP_VERSION}-fpm-alpine

# Install system dependencies
RUN apk add --no-cache \
    bash \
    icu-dev \
    libzip-dev \
    postgresql-dev \
    zlib-dev \
    git \
    unzip

# Install PHP extensions
RUN docker-php-ext-install \
    intl \
    pdo_pgsql \
    zip

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /app

# Add entrypoint script
COPY docker/php-fpm/entrypoint.sh /usr/local/bin/docker-php-entrypoint-yii
RUN chmod +x /usr/local/bin/docker-php-entrypoint-yii

# Expose port 9000
EXPOSE 9000

ENTRYPOINT ["docker-php-entrypoint-yii"]
CMD ["php-fpm"]
