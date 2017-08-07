FROM jqestateru/postgres-alpine:v9.6
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

USER root
RUN apk add --update --no-cache build-base postgresql-dev libxml2-dev perl && \
    apk add --no-cache geos proj4 gdal geos-dev proj4-dev gdal-dev \
      -X https://dl-3.alpinelinux.org/alpine/edge/testing && \
    wget -O /postgis.tgz http://download.osgeo.org/postgis/source/postgis-2.3.2.tar.gz && \
    tar -xf /postgis.tgz -C / && \
    cd /postgis-2.3.2 && \
    ./configure && \
    make && \
    make comments && \
    make install && \
    apk del --purge build-base postgresql-dev libxml2-dev geos-dev proj4-dev gdal-dev perl && \
    rm -rf /var/cache/apk/* /postgis.tgz /postgis-2.3.2

USER postgres
CMD /run.sh
