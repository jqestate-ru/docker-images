FROM anapsix/alpine-java:8_server-jre_unlimited
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

ENV APP /bamboo
ENV VERSION 6.0.3
ENV BAMBOO_HOME /data
ENV PORT 8085

RUN apk add --update --no-cache bash docker rsync openssh-client bash wget ca-certificates sudo && \
    update-ca-certificates && \
    adduser -D -g '' -h ${APP} -H -s /bin/bash -u 233 bamboo && \
    addgroup bamboo wheel && \
    echo "%bamboo ALL=(ALL) NOPASSWD: /bin/chown" > /etc/sudoers && \
    wget -O /bamboo.tgz https://www.atlassian.com/software/bamboo/downloads/binary/atlassian-bamboo-${VERSION}.tar.gz && \
    tar -xf /bamboo.tgz -C / && \
    mv /atlassian-bamboo-${VERSION} ${APP} && \
    echo "bamboo.home = ${BAMBOO_HOME}" > "${APP}/atlassian-bamboo/WEB-INF/classes/bamboo-init.properties" && \
    chown -R bamboo ${APP} && \
    rm -rf /var/cache/apk/* /bamboo.tgz

VOLUME ${BAMBOO_HOME}

EXPOSE ${PORT}

COPY run.sh /

CMD /run.sh
