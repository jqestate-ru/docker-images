FROM anapsix/alpine-java:8_server-jre_unlimited
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

ENV APP /bitbucket
ENV VERSION 5.1.0
ENV BITBUCKET_HOME /data
ENV PORT 7990
ENV GIT_PORT 7999

RUN apk add --update --no-cache bash git perl wget ca-certificates && \
    update-ca-certificates && \
    adduser -D -g '' -h ${APP} -H bitbucket && \
    wget -O /bitbucket.tgz https://www.atlassian.com/software/stash/downloads/binary/atlassian-bitbucket-${VERSION}.tar.gz && \
    tar -xf /bitbucket.tgz -C / && \
    mv /atlassian-bitbucket-${VERSION} ${APP} && \
    chown -R bitbucket:bitbucket ${APP} && \
    rm -rf /var/cache/apk/* /bitbucket.tgz

VOLUME ${BITBUCKET_HOME}

EXPOSE ${PORT} ${GIT_PORT}

COPY run.sh /

CMD /run.sh
