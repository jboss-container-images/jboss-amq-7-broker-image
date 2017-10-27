#!/bin/sh
# Installs the AMQ distribution into the filesystem.
set -e

SOURCES_DIR=/tmp/artifacts

DISTRIBUTION_VERSION="amq-broker-7.1.0"

unzip -q "$SOURCES_DIR/${DISTRIBUTION_VERSION}-bin.zip"
mv $DISTRIBUTION_VERSION $AMQ_HOME

cp $(dirname $0)/runscript.sh $AMQ_HOME/bin
chmod 0755 $AMQ_HOME/bin/runscript.sh
