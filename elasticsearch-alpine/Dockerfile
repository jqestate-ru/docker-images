FROM anapsix/alpine-java:8_server-jre_unlimited
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

ENV VERSION 5.4.0
ENV NUMBER_OF_MASTERS 1

RUN apk add --update --no-cache bash curl ca-certificates && \
    ( curl -Lskj https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-$VERSION.tar.gz | \
    gunzip -c - | tar xf - ) && \
    mv /elasticsearch-$VERSION /elasticsearch && \
    /elasticsearch/bin/elasticsearch-plugin install io.fabric8:elasticsearch-cloud-kubernetes:$VERSION --verbose && \
    rm -rf $(find /elasticsearch | egrep "(\.(exe|bat)$|sigar/.*(dll|winnt|x86-linux|solaris|ia64|freebsd|macosx))") && \
    rm -rf /var/cache/apk/* && \
    adduser -D -g '' -h /elasticsearch elasticsearch

COPY config /elasticsearch/config
COPY run.sh /

VOLUME /data

EXPOSE 9200 9300

CMD /run.sh
