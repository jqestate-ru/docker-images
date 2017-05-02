#!/bin/bash

set -e

function finish {
  if [ -n "$OWNER" ]; then
    chown -R $OWNER:$OWNER /home/npm
  fi
}
trap finish EXIT

chown -R npm:npm /home/npm

su npm -c "${PROJECT}/build.sh"
