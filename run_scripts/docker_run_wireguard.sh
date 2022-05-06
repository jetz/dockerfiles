#!/bin/sh

# 运行wireguard
docker run -it -d --name wireguard \
    --cap-add=net_admin \
    --cap-add=sys_module \
    -p 55555:5555/udp \
    -v /etc/wireguard:/etc/wireguard cmulk/wireguard-docker:buster

###############################################
# /etc/wireguard/wg0.conf
###############################################
# [Interface]
# Address = 192.168.20.1
# PrivateKey = xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
# ListenPort = 5555
# 
# [Peer]
# PublicKey = gXKbprhHvxq0vnWfVkxdfMFi43Bjd69+8y+X2RGHpS8=
# AllowedIPs = 192.168.20.2
# 
# [Peer]
# PublicKey = 3l2ky2iZcLwGeCOEp9KB1UMlz5HW1DzqfI2i0sgjezI=
# AllowedIPs = 192.168.20.3
