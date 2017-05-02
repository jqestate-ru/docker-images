#!/bin/sh

set -e

chown -R elasticsearch /elasticsearch /data

export CLUSTER_NAME=${CLUSTER_NAME:-elasticsearch-default}
export NODE_MASTER=${NODE_MASTER:-true}
export NODE_DATA=${NODE_DATA:-true}
export HTTP_ENABLE=${HTTP_ENABLE:-true}
export HTTP_CORS_ENABLE=${HTTP_CORS_ENABLE:-true}
export HTTP_CORS_ALLOW_ORIGIN=${HTTP_CORS_ALLOW_ORIGIN:-*}
export NETWORK_HOST=${NETWORK_HOST:-_site_}

ulimit -l unlimited

su elasticsearch -c "/elasticsearch/bin/elasticsearch"
