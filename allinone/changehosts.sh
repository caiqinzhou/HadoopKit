#!/bin/bash
bin=`dirname "$0"`
bin=`cd "$bin"; pwd`
. $bin/install-config.sh


cp /etc/hosts /etc/hosts_bak
cat $FH_BASE_DIR/hosts > /etc/hosts
echo "############################# Done ####################################"
echo "### Setting /etc/hosts finished, see the old file in /etc/hosts_bak ###"
echo "#######################################################################"
