#!/bin/sh

docker run -it -d --name mongo \
    -p 127.0.0.1:27017:27017 \
    -v /etc/localtime:/etc/localtime:ro \
    -v /data/mongo/data:/data/db \
    mongo:3.4 --storageEngine wiredTiger