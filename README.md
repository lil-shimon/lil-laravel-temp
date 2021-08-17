# docker-laravel-templete

## build
just run [setup.sh](https://github.com/lil-shimon/docker-laravel-temp/blob/master/setup.sh)

```sh
sh setup.sh
```

## version

- docker 20.10.7
- php 8.0.9
- composer 2.0.14
- nginx 1.20.1
- laravel 8.54.0
- mysql 8.0.26

## command

up
```
docker compose up -d
```

php container
```
docker compose exec ll_app bash
```

mysql container
```
docker compose exec db bash
```

version
```
docker compose exec ${service} ${target} -v
```

