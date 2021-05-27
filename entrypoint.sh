#!/bin/sh -l

cp .env.example .env

php artisan migrate

composer install --prefer-dist --no-ansi --no-interaction --no-progress --no-scripts

php artisan key:generate

php vendor/bin/phpunit
