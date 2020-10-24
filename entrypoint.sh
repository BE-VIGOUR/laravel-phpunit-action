#!/bin/sh -l

#composer install --prefer-dist

php -d memory_limit=-1 composer.phar install

cp .env.testing .env

php artisan config:clear

php vendor/bin/phpunit
