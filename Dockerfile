# Content: Dockerfile for PHP 8.2
FROM php:8.2-fpm

# Install package
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Install PHP extension
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd


# Set working directory
WORKDIR /var/www/html


# Copy source code
COPY src/ /var/www/html

# Install composer
# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# RUN composer install --no-interaction

# Set role for storage and bootstrap/cache
RUN mkdir -p storage bootstrap/cache \
    && chown -R www-data:www-data storage bootstrap/cache \
    && chmod -R 775 storage bootstrap/cache
# Set quyền cho storage và bootstrap/cache
RUN chown -R www-data:www-data storage bootstrap/cache
RUN chmod -R 775 storage bootstrap/cache

# Expose port 9000 để kết nối với nginx hoặc apache
EXPOSE 8000

# CMD ["php-fpm"]
CMD php artisan serve --host=0.0.0.0
