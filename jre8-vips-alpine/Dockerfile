FROM jqestateru/jre8-alpine
MAINTAINER Timothy Klim <jqestate@timothyklim.com>

ENV VERSION 8.6.0

RUN apk add --update --no-cache imagemagick glib gobject-introspection zlib libxml2 libjpeg-turbo libexif lcms2 fftw giflib \
      libpng libwebp orc tiff poppler-glib librsvg libgsf openexr && \
    apk add --virtual vips-dependencies imagemagick-dev build-base glib-dev gobject-introspection-dev libjpeg-turbo-dev \
      libexif-dev lcms2-dev fftw-dev giflib-dev libpng-dev libwebp-dev orc-dev tiff-dev poppler-dev librsvg-dev libgsf-dev \
      openexr-dev zlib-dev libxml2-dev && \
    wget -O- https://github.com/jcupitt/libvips/releases/download/v$VERSION-alpha1/vips-$VERSION.tar.gz | tar xzC /tmp && \
    cd /tmp/vips-$VERSION && \
    ./configure --prefix=/usr \
       --without-python \
       --disable-static \
       --disable-dependency-tracking \
       --enable-silent-rules \
       --with-magick && \
    make -s install-strip && \
    apk del --purge vips-dependencies
