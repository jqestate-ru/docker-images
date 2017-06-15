FROM anapsix/alpine-java:8_server-jre_unlimited
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

ENV APP /confluence
ENV VERSION 6.1.3
ENV CONFLUENCE_HOME /data
ENV PORT 8090

RUN apk add --update --no-cache bash wget ca-certificates && \
    update-ca-certificates && \
    adduser -D -g '' -h ${APP} -H confluence && \
    wget -O /confluence.tgz https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-${VERSION}.tar.gz && \
    tar -xf /confluence.tgz -C / && \
    mv /atlassian-confluence-${VERSION} ${APP} && \
    echo "confluence.home = ${CONFLUENCE_HOME}" > "${APP}/confluence/WEB-INF/classes/confluence-init.properties" && \
    chown -R confluence:confluence ${APP} && \
    rm -rf /var/cache/apk/* /confluence.tgz

VOLUME ${CONFLUENCE_HOME}

EXPOSE ${PORT}

COPY run.sh /

CMD /run.sh
