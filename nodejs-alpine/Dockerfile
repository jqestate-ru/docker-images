FROM alpine:3.4
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

ENV PROJECT /home/npm/project

RUN apk add --update --no-cache bash nodejs alpine-sdk supervisor && \
    npm install -g --progress=false npm yarn && \
    rm -rf /var/cache/apk/* && \
    adduser -D -g '' npm && \
    echo "progress=false" > /home/npm/.npmrc && \
    echo '{}' > /home/npm/.babel.json && \
    mkdir ${PROJECT}

COPY run.sh /

WORKDIR ${PROJECT}

CMD /run.sh
