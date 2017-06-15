FROM anapsix/alpine-java:8_server-jre_unlimited
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

ENV APP /app
ENV HOME ${APP}
WORKDIR ${APP}

RUN apk add --update --no-cache bash && \
    adduser -D -g '' -h ${APP} jq
