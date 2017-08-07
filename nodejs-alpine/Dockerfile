FROM alpine:edge
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

ENV PROJECT /home/npm/project

RUN apk add --update --no-cache -X https://dl-3.alpinelinux.org/alpine/edge/community bash nodejs-current-dev nodejs-current nodejs-current-npm build-base && \
    wget https://yarnpkg.com/latest.tar.gz -O /tmp/yarn.tgz && \
    tar -zvxf /tmp/yarn.tgz && \
    mkdir /opt && \
    mv /dist /opt/yarn && \
    ln -snf /opt/yarn/bin/yarn /usr/bin/yarn && \
    rm -rf /var/cache/apk/* && \
    adduser -D -g '' npm && \
    echo "progress=false" > /home/npm/.npmrc && \
    echo '{}' > /home/npm/.babel.json && \
    chown -R npm:npm /home/npm && \
    mkdir ${PROJECT}

COPY run.sh /

WORKDIR ${PROJECT}

CMD /run.sh
