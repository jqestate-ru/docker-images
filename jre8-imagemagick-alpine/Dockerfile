FROM jqestate/jre8-alpine
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

RUN apk add --update --no-cache imagemagick alpine-sdk jpeg-dev && \
    git clone --depth 1 https://github.com/tjko/jpegoptim.git && \
    cd jpegoptim && \
    ./configure && \
    make -j4 && \
    make install && \
    apk del --purge alpine-sdk jpeg-dev && \
    rm -rf /var/cache/apk/* ./jpegoptim
