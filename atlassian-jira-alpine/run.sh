#!/bin/sh

set -e

if [ -n "$HTTPS_HOST" ]; then
  sed -i -e "s/<Connector port=\"${PORT}\"\s*$/<Connector port=\"${PORT}\" scheme=\"https\" proxyName=\"${HTTPS_HOST}\" proxyPort=\"443\" /" "${APP}/conf/server.xml"
fi

chown -R jira:jira ${JIRA_HOME}

su jira -c "${APP}/bin/start-jira.sh -fg"
