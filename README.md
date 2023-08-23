# Docker-Laravel-Template

## Build Process

### Preliminary Step (Optional)
If you wish to modify the `APP_NAME` in `.env.example`, make sure to also update the corresponding values in `my.cnf` for MySQL and `default.conf` for Nginx. This is important because these configurations affect the container names within Docker.

#### In `setup.sh`

```shell
echo "Executing step 3: Installing Composer dependencies..."
docker exec -it your-php-fpm-container-name composer install

echo "Executing step 4: Performing Database Migrations..."
docker exec -it your-php-fpm-container-name php artisan migrate
```

#### In `default.conf`

```nginx
location ~ \.php$ {
    fastcgi_pass your-php-fpm-container-name:9000;
    fastcgi_param SCRIPT_FILENAME $realpath_root$fastcgi_script_name;
    include fastcgi_params;
}
```

#### MySQL Configuration in `.env.example`

```env
DB_NAME=database
DB_USER=user
DB_PASS=secret
```

After updating these configurations, ensure you also revise the Laravel environment file:

#### In `backend/.env.example`

```env
DB_DATABASE=database
DB_USERNAME=user
DB_PASSWORD=secret
```

### Step 1
Execute the setup script to initialize the environment:

```sh
sh setup.sh
```

## Supported Versions

- Docker: 20.10.7
- PHP: 8.0.9
- Composer: 2.0.14
- Nginx: 1.20.1
- Laravel: 8.54.0
- MySQL: 5.7
