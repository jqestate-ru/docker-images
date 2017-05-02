FROM alpine:3.4
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

RUN apk add --update --no-cache duplicity py-boto ca-certificates && \
    update-ca-certificates && \
    rm -rf /var/cache/apk/*
