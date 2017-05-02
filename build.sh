#!/bin/bash

set -e

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function build {
  docker build ${BUILD_OPTS} --force-rm -t jqestate/$1 ${ROOT}/$1
  docker push jqestate/$1
}

time build "jre8-alpine"
time build "jre8-imagemagick-alpine"
time build "duplicity-alpine"
time build "elasticsearch-alpine"
time build "kafka-alpine"
time build "nodejs-alpine"
time build "postgres-alpine"
time build "postgres-postgis-alpine"
time build "pgbouncer-alpine"
time build "zookeeper-alpine"
time build "phantomjs-ubuntu"
time build "jre8-phantomjs-ubuntu"

time build "atlassian-bamboo-alpine"
time build "atlassian-bitbucket-alpine"
time build "atlassian-confluence-alpine"
time build "atlassian-jira-alpine"
