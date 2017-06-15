FROM alpine:edge
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

ENV PROJECT /home/npm/project

RUN apk add --update --no-cache bash nodejs-current-dev nodejs-current nodejs-current-npm alpine-sdk && \
    npm install -g --progress=false npm yarn && \
    rm -rf /var/cache/apk/* && \
    adduser -D -g '' npm && \
    echo "progress=false" > /home/npm/.npmrc && \
    echo '{}' > /home/npm/.babel.json && \
    chown -R npm:npm /home/npm && \
    mkdir ${PROJECT}

COPY run.sh /

WORKDIR ${PROJECT}

CMD /run.sh
