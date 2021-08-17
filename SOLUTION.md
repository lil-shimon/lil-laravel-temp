## php artisan migrate error (mysql error) SQLSTATE[HY000] [1045] Access denied for user
check user and fix .env

mysql container
```
docker compose exec db bash
```
run mysql
```
mysql -u root -p -h db
```
check user
```
select user, host, db from mysql.db  
```
