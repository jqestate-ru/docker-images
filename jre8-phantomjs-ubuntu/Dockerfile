FROM jqestate/phantomjs-ubuntu
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

ENV APP /app
ENV HOME ${APP}
ENV DEBIAN_FRONTEND noninteractive
WORKDIR ${APP}

RUN adduser --disabled-password --gecos '' --home ${APP} jq && \
    apt-get update && \
    apt-get install -qy software-properties-common && \
    add-apt-repository ppa:webupd8team/java && \
    apt-get update && \
    echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections && \
    apt-get install --allow-unauthenticated -qy oracle-java8-installer && \
    apt-get --purge autoremove -qy software-properties-common && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/*
