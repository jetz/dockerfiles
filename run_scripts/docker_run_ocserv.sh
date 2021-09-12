#!/bin/sh

# 生成密码
docker run -it --rm \
    -e NO_TEST_USER=1 \
    -v /etc/ocserv:/etc/ocserv tommylau/ocserv:0.12.1 ocpasswd -c /etc/ocserv/ocpasswd -g "Route,All" jetz

# 运行server
docker run -it -d --name ocserv --privileged \
    -p 1988:443 \
    -p 1988:443/udp \
    -e NO_TEST_USER=1 \
    -v /etc/ocserv/ocpasswd:/etc/ocserv/ocpasswd tommylau/ocserv:0.12.1