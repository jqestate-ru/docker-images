FROM lwieske/java-8:jdk-8u121-slim
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

ENV KAFKA_HOME /kafka
ENV VERSION 0.10.1.0

RUN wget -q -O /kafka.tgz http://apache-mirror.rbc.ru/pub/apache/kafka/${VERSION}/kafka_2.11-${VERSION}.tgz && \
    tar -xf /kafka.tgz -C / && \
    mv /kafka_2.11-${VERSION} /kafka && \
    mkdir -p /etc/kafka && \
    mv /kafka/config/server.properties /etc/kafka/ && \
    adduser -D -g '' -h ${KAFKA_HOME} -H -s /bin/bash kafka && \
    chown -R kafka ${KAFKA_HOME} && \
    rm -rf /var/cache/apk/* /kafka.tgz

VOLUME ${KAFKA_HOME}

EXPOSE 9092

COPY run.sh /

CMD /run.sh
