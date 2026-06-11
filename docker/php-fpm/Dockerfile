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

# Expose port 9000
EXPOSE 9000

CMD ["php-fpm"]
