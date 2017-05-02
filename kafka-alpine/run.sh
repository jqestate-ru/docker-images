#!/bin/sh

set -e

chown -R kafka ${KAFKA_HOME}

su kafka -c "${KAFKA_HOME}/bin/kafka-server-start.sh /etc/kafka/server.properties"
