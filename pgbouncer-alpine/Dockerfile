FROM alpine:edge
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

RUN apk add --update --no-cache build-base libevent libevent-dev openssl openssl-dev && \
    wget -O /tmp/pgbouncer.tgz https://pgbouncer.github.io/downloads/files/1.7.2/pgbouncer-1.7.2.tar.gz && \
    mkdir /tmp/pgbouncer && \
    tar -xf /tmp/pgbouncer.tgz --strip 1 -C /tmp/pgbouncer && \
    ./configure && \
    make && \
    make install && \
    apk del --purge build-base libevent-dev && \
    adduser -D -g '' -h /etc/pgbouncer -H pgbouncer && \
    rm -rf /var/cache/apk/*

CMD pgbouncer /etc/pgbouncer/pgbouncer.ini
