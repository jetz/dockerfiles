FROM alpine:3.4
MAINTAINER jetz <jet.zheung@gmail.com>

ADD etcd /usr/bin/
ADD etcdctl /usr/bin/

ADD entrypoint.sh /

RUN mkdir -p /var/etcd/ && mkdir -p /var/lib/etcd/

EXPOSE 2379 2380

ENTRYPOINT ["./entrypoint.sh"]
