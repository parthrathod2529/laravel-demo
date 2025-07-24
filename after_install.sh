#!/bin/bash
cd /var/www/html
composer install --no-dev --optimize-autoloader
cp .env.example .env
php artisan key:generate
php artisan config:cache
chown -R www-data:www-data /var/www/html
