#!/bin/sh
set -e

$AMQ_HOME/bin/artemis create $AMQ_HOME/broker
$AMQ_HOME/broker/bin/artemis run
