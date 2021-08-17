# ll_s

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

container
```
docker compose ll_app exec bash
```

version
```
docker compose exec ${service} ${target} -v
```

