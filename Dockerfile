# Use a base image of PHP and Apache
FROM php:7.4-apache

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the GLPI source code to the working directory
COPY . /var/www/html

# Install the required PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Set the ownership and permissions of the working directory
RUN chown -R www-data:www-data /var/www/html && chmod -R 775 /var/www/html

# Expose port 80 for Apache
EXPOSE 80
