FROM jqestateru/postgres-alpine:v9.6.5
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

USER root
RUN apk add --update --no-cache build-base postgresql-dev libxml2-dev perl && \
    apk add --no-cache geos proj4 gdal geos-dev proj4-dev gdal-dev \
      -X https://dl-3.alpinelinux.org/alpine/edge/testing && \
    wget -O /tmp/postgis.tgz http://download.osgeo.org/postgis/source/postgis-2.3.3.tar.gz && \
    mkdir /tmp/postgis && \
    tar -xf /tmp/postgis.tgz --strip 1 -C /tmp/postgis && \
    cd /tmp/postgis && \
    ./configure && \
    make && \
    make comments && \
    make install && \
    apk del --purge build-base postgresql-dev libxml2-dev geos-dev proj4-dev gdal-dev perl && \
    rm -rf /var/cache/apk/*

USER postgres
CMD /run.sh
