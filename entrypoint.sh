#!/bin/sh -l

composer install --prefer-dist --no-ansi --no-interaction --no-progress --no-scripts

cp .env.example .env

php artisan key:generate

php vendor/bin/phpunit
