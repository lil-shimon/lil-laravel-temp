# docker-laravel-templete

## build

### step0(optional)
if you want, change ```APP_NAME``` on .env.example.
when you change APP_NAME, change my.cnf and default.conf for mysql and nginx because it effects container name of docker

```setup.sh```
```shell
    echo "step3: composer install >>>"
    docker exec -it lil-php-fpm composer install // here

    echo "step4: migration >>>"
    docker exec -it lil-php-fpm php artisan migrate // here
```


```default.conf```
```
    location ~ \.php$ {
        fastcgi_pass lil-php-fpm:9000; // here
        fastcgi_param SCRIPT_FILENAME $realpath_root$fastcgi_script_name;
        include fastcgi_params;
    }
```

mysql conf is on .env.example
```.env.example```
```
DB_NAME=database
DB_USER=user
DB_PASS=secret
```

when you fix conf, you must edit laravel env as well.
```backend/.env.example```
```
DB_DATABASE=database
DB_USERNAME=user
DB_PASSWORD=secret
```

### step1:

just run script

```sh
sh setup.sh
```

## version

- docker 20.10.7
- php 8.0.9
- composer 2.0.14
- nginx 1.20.1
- laravel 8.54.0
- mysql 5.7
