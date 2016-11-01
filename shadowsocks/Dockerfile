FROM python:2.7-alpine
MAINTAINER jetz <jet.zheung@gmail.com>

RUN pip install shadowsocks

EXPOSE 8388
VOLUME /etc/shadowsocks

CMD ["-q", "-c", "/etc/shadowsocks/config.json"]
ENTRYPOINT ["/usr/local/bin/ssserver"] 
