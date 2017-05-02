#!/bin/sh

set -e

chown -R bitbucket:bitbucket ${BITBUCKET_HOME}

su bitbucket -c "${APP}/bin/start-bitbucket.sh -fg"
