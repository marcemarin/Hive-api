#!/bin/bash 
git@github.com:marasco/hive-5-api.git
docker-compose up -d
docker exec -i -t hiveapp composer update
docker exec -i -t hiveapp composer dump-autoload
docker exec hiveapp php -S hiveapp:8000 -t ./public
