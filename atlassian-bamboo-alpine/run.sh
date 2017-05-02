#!/bin/sh

set -e

chown -R bamboo ${BAMBOO_HOME}

su bamboo -c "${APP}/bin/start-bamboo.sh -fg"
