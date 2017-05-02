#!/bin/sh

set -e

chown -R zookeeper ${ZK_DATA}

su zookeeper -c "${ZK_HOME}/bin/zkServer.sh start-foreground"
