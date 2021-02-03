FROM php:7.4-fpm-alpine

# Installation de l'APK
RUN apk --no-cache update && apk --no-cache add bash git

# Installation de PDO
RUN docker-php-ext-install pdo_mysql

# Installation de Composer pour Symfony
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && php composer-setup.php && php -r "unlink('composer-setup.php');" && mv composer.phar /usr/local/bin/composer

# Symfony CLI
RUN wget https://get.symfony.com/cli/installer -O - | bash && mv /root/.symfony/bin/symfony /usr/local/bin/symfony

WORKDIR /var/www/html