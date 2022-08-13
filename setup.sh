#!/bin/bash

setUp() {
    echo "running setup.sh >>>"
    cd $SCRIPT_DIR

    echo "step1: cp .env >>>"
    cp .env.example .env
    cp backend/.env.example backend/.env

    echo "step2: docker build >>>"
    docker-compose build --no-cache
    docker-compose up -d
    docker-compose ps

    echo "step3: composer install >>>"
    docker exec -it lil-php-fpm composer install

    echo "step4: migration >>>"
    docker exec -it lil-php-fpm php artisan migrate
  }



SCRIPT_DIR=$(
    cd $(dirname $0)
    pwd
)

setUp

