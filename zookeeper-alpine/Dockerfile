FROM lwieske/java-8:jdk-8u121-slim
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

ENV ZK_HOME /zookeeper
ENV ZK_DATA /data
ENV VERSION 3.4.6

RUN apk add --update --no-cache bash && \
    wget -q -O /zookeeper.tgz http://apache-mirror.rbc.ru/pub/apache/zookeeper/zookeeper-${VERSION}/zookeeper-${VERSION}.tar.gz && \
    tar -xf /zookeeper.tgz -C / && \
    mv /zookeeper-${VERSION} ${ZK_HOME} && \
    mv ${ZK_HOME}/conf/zoo_sample.cfg ${ZK_HOME}/conf/zoo.cfg && \
    sed  -i "s|/tmp/zookeeper|${ZK_DATA}|g" ${ZK_HOME}/conf/zoo.cfg && \
    mkdir -p ${ZK_HOME}/data && \
    adduser -D -g '' -h ${ZK_HOME} -H -s /bin/bash zookeeper && \
    chown -R zookeeper ${ZK_HOME} && \
    rm -rf /var/cache/apk/* /zookeeper.tgz

EXPOSE 2181 2888 3888

WORKDIR ${ZK_HOME}
VOLUME ["${ZK_HOME}/conf", "${ZK_DATA}"]

COPY run.sh /

CMD /run.sh
