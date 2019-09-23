FROM alpine:3.10.2
MAINTAINER jetz <jet.zheung@gmail.com>

ADD brook /usr/local/bin/

EXPOSE 9999

CMD ["server", "-l", ":9999", "-p", "password"]
ENTRYPOINT ["/usr/local/bin/brook"]
