#!/bin/sh

set -e

if [ -z "$(ls -A "$PGDATA")" ]; then
  initdb
fi

postgres -D $PGDATA
