#!/bin/sh

docker run -it -d --name mysql \
    -p 127.0.0.1:3306:3306 \
    -v /data/mysql:/var/lib/mysql \
    -v /etc/localtime:/etc/localtime:ro \
    -e MYSQL_ROOT_PASSWORD=passwd mysql:5.7.12 \
    --character-set-server=utf8mb4 \
    --collation-server=utf8mb4_unicode_ci