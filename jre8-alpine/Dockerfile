FROM lwieske/java-8:jdk-8u121-slim
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

ENV APP /app
ENV HOME ${APP}
WORKDIR ${APP}

RUN apk add --update --no-cache bash && \
    adduser -D -g '' -h ${APP} jq
