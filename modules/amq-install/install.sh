#!/bin/sh
# Installs the AMQ distribution into the filesystem.
set -e

SOURCES_DIR=/tmp/artifacts
SCRIPT_DIR=$(dirname $0)
ADDED_DIR=${SCRIPT_DIR}/added

DISTRIBUTION_VERSION="amq-broker-7.2.2"

unzip -q "$SOURCES_DIR/${DISTRIBUTION_VERSION}-HF1-bin.zip"
mv $DISTRIBUTION_VERSION $AMQ_HOME

cp $ADDED_DIR/launch.sh $AMQ_HOME/bin
chmod 0755 $AMQ_HOME/bin/launch.sh
