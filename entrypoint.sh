#!/bin/sh -l

#composer install --prefer-dist

php -d memory_limit=-1 composer.phar install --ignore-platform-reqs

cp .env.testing .env

php artisan config:clear

sh .githooks/pre-push

#php vendor/bin/phpunit
