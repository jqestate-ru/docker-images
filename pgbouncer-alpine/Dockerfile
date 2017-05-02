FROM alpine:edge
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

RUN apk add --update --no-cache alpine-sdk libevent libevent-dev openssl openssl-dev && \
    wget -O /pgbouncer.tgz https://pgbouncer.github.io/downloads/files/1.7.2/pgbouncer-1.7.2.tar.gz && \
    tar -xf /pgbouncer.tgz -C / && \
    cd /pgbouncer-1.7.2 && \
    ./configure && \
    make && \
    make install && \
    apk del --purge alpine-sdk libevent-dev && \
    adduser -D -g '' -h /etc/pgbouncer -H pgbouncer && \
    rm -rf /var/cache/apk/* /pgbouncer*

CMD pgbouncer /etc/pgbouncer/pgbouncer.ini
