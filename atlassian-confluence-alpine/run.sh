#!/bin/sh

set -e

if [ -n "$HTTPS_HOST" ]; then
  sed -i -e "s/<Connector port=\"${PORT}\"\s*$/<Connector port=\"${PORT}\" scheme=\"https\" proxyName=\"${HTTPS_HOST}\" proxyPort=\"443\" /" "${APP}/conf/server.xml"
fi

chown -R confluence:confluence ${CONFLUENCE_HOME}

su confluence -c "${APP}/bin/start-confluence.sh -fg"
