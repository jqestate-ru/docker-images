FROM anapsix/alpine-java:8_server-jre_unlimited
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

ENV APP /jira
ENV VERSION 7.4.4
ENV JIRA_HOME /data
ENV PORT 8080

RUN apk add --update --no-cache bash wget ca-certificates && \
    update-ca-certificates && \
    adduser -D -g '' -h ${APP} -H jira && \
    wget -O /jira.tgz https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-core-${VERSION}.tar.gz && \
    tar -xf /jira.tgz -C / && \
    mv /atlassian-jira-core-${VERSION}-standalone ${APP} && \
    chown -R jira:jira ${APP} && \
    rm -rf /var/cache/apk/* /jira.tgz

VOLUME ${JIRA_HOME}

EXPOSE ${PORT}

COPY run.sh /

CMD /run.sh
