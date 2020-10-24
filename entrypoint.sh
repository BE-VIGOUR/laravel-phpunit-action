#!/bin/sh -l

#composer install --prefer-dist

cp .env.testing .env

#php artisan key:generate

php vendor/bin/phpunit
