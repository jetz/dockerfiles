#!/bin/sh

# 运行wireguard
docker run -it -d --name wireguard \
    --cap-add=net_admin \
    --cap-add=sys_module \
    -p 55555:5555/udp \
    -v /etc/wireguard:/etc/wireguard cmulk/wireguard-docker:buster
