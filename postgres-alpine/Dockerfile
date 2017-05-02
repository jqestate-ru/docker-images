FROM alpine:edge
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

RUN apk add --update --no-cache -X https://dl-3.alpinelinux.org/alpine/edge/testing \
      bash postgresql postgresql-contrib postgresql-client && \
    rm -rf /var/cache/apk/*

ENV LANG ru_RU.utf8
ENV PGDATA /data
ENV TERM xterm

WORKDIR /data

VOLUME /data

EXPOSE 5432

COPY run.sh /

USER postgres
CMD /run.sh
