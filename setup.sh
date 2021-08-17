#!/bin/bash

setUp() {
    echo "running setup.sh"
    cd $SCRIPT_DIR

    echo "step1: cp .env"
    cp .env.example .env
    cp backend/.env.example backend/.env

    echo "step2: docker build"
    docker compose up -d --build

    echo "step3: composer install"
    docker compose exec ll_app composer install

    echo "step4: migration"
    docker compose exec ll_app php artisan migrate
  }



SCRIPT_DIR=$(
    cd $(dirname $0)
    pwd
)

setUp

