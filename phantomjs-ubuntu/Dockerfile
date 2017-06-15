FROM ubuntu:16.04
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

RUN apt-get update && \
    apt-get install --allow-unauthenticated -y git build-essential g++ flex bison gperf ruby perl \
      libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
      libpng-dev libjpeg-dev python libx11-dev libxext-dev wget && \
    mkdir -p /usr/local/share/phantomjs/examples && \
    wget -O /usr/local/share/phantomjs/examples/rasterize.js https://raw.githubusercontent.com/jqestateru/phantomjs/master/examples/rasterize.js && \
    cd /usr/local && \
    git clone --recursive -b 2.1 --single-branch git://github.com/ariya/phantomjs.git && \
    cd phantomjs && \
    python ./build.py -c && \
    mv /usr/local/phantomjs/bin/phantomjs /usr/bin/phantomjs && \
    rm -rf /usr/local/phantomjs /var/lib/apt/lists/* /var/cache/apt/*
