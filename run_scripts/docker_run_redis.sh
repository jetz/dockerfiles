#!/bin/sh

docker run -it -d --name redis \
    -p 127.0.0.1:6379:6379 \
    -v /data/redis:/data redis:3.2.6 redis-server /data/redis.conf