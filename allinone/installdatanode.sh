#!/bin/bash

bin=`dirname "$0"`
bin=`cd "$bin"; pwd`
. $bin/install-config.sh

echo "### Start to install datanode ###"
/etc/init.d/iptables stop

$FH_BASE_DIR/prepareEnv.sh
$FH_BASE_DIR/changehosts.sh
$FH_BASE_DIR/insertKey.sh
$FH_BASE_DIR/installhadoop-local.sh
$FH_BASE_DIR/prepareDir.sh
$FH_BASE_DIR/configHadoop.sh
$FH_BASE_DIR/start-all.sh

echo "### End ###"
