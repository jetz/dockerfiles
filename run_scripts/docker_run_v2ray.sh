#!/bin/sh

docker run -it -d --name v2ray \
    -p 8488:8488 \
    -p 8388:8388 \
    -v /etc/v2ray:/etc/v2ray \
    v2ray/official v2ray -config=/etc/v2ray/config.json

###########################################################
# /etc/v2ray/config.json
###########################################################
#{
#  "inbounds": [
#    {
#      "port": 8488,
#      "protocol": "vmess",
#      "settings": {
#          "clients": [
#              {
#		"id": "d0cc49a1-f285-8821-1b35-8c591538e9e3",
#             	"alterId": 64
#              }
#	  ]
#       }
#    },
#    {
#       "port": 8388,
#       "protocol": "shadowsocks",
#       "settings": {
#	    "method": "aes-128-gcm",
#	    "ota": true,
#	    "password": "password"
#	}
#     }
#  ],
#  "outbounds": [
#    {
#       "protocol": "freedom",
#       "settings": {}
#    }
#   ]
#}
###########################################################
