#!/bin/sh

# 运行trojan
docker run -it -d --name trojan \
    -p 8443:443 \
    -v /etc/trojan:/config \
    trojangfw/trojan:1.15.1 trojan config.json
###########################################################
# /etc/trojan/config.json
###########################################################
# {
#     "run_type": "server",
#     "local_addr": "0.0.0.0",
#     "local_port": 443,
#     "remote_addr": "127.0.0.1",
#     "remote_port": 80,
#     "password": [
#         "your password"
#     ],
#     "log_level": 1,
#     "ssl": {
#         "cert": "cert/server.crt",
#         "key": "cert/server.key",
#         "key_password": "",
#         "cipher": "ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384",
#         "cipher_tls13": "TLS_AES_128_GCM_SHA256:TLS_CHACHA20_POLY1305_SHA256:TLS_AES_256_GCM_SHA384",
#         "prefer_server_cipher": true,
#         "alpn": [
#             "http/1.1"
#         ],
#         "reuse_session": true,
#         "session_ticket": false,
#         "session_timeout": 600,
#         "plain_http_response": "",
#         "curves": "",
#         "dhparam": ""
#     },
#     "tcp": {
#         "prefer_ipv4": false,
#         "no_delay": true,
#         "keep_alive": true,
#         "reuse_port": false,
#         "fast_open": true,
#         "fast_open_qlen": 20
#     }
# }
###########################################################
# /etc/trojan/cert/server.key
# /etc/trojan/cert/server.crt
###########################################################
# openssl rand -writerand ~/.rnd
# openssl genrsa -out server.key 2048
# openssl req -new -x509 -days 3650 -key server.key -out server.crt -subj "/C=CN/ST=BJ/L=BJ/O=NS/OU=NS/CN=<server ip>"
###########################################################

# 运行caddy
docker run -it -d --name caddy  \
    -p 80:80 \
    -v /etc/caddy/index.html:/usr/share/caddy/index.html \
    caddy:2.5.0 caddy run --config /etc/caddy/Caddyfile --adapter caddyfile
###########################################################
# /etc/caddy/index.html
###########################################################
# Hello Trojan
###########################################################
