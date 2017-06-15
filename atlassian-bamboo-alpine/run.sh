#!/bin/sh

set -e

if [ -n "$HTTPS_HOST" ]; then
  sed -i -e "s/\s*port=\"${PORT}\"\s*$/ port=\"${PORT}\" scheme=\"https\" proxyName=\"${HTTPS_HOST}\" proxyPort=\"443\" /" "${APP}/conf/server.xml"
fi

chown -R bamboo ${BAMBOO_HOME}

su bamboo -c "${APP}/bin/start-bamboo.sh -fg"
