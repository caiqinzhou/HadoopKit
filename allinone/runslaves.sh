#!/bin/bash

bin=`dirname "$0"`
bin=`cd "$bin"; pwd`
. $bin/install-config.sh

if [ $# = 0 ]; then
echo "Usage: runcluster.sh <command>"
exit 1
fi


for khost in `cat $FH_BASE_DIR/deploy-hosts`
do
echo "###### Execute command on $khost"
ssh $khost $@

done

