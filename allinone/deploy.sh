#!/bin/bash

bin=`dirname "$0"`
bin=`cd "$bin"; pwd`
. $bin/install-config.sh


for khost in `cat $FH_BASE_DIR/deploy-hosts`
do
echo ">>> Deploy To Host: $khost"
scp -rp $FH_BASE_DIR root@$khost:/root
echo "<<< Done: $khost"
done

echo "############################# Done ####################################"
