#!/bin/bash

bin=`dirname "$0"`
bin=`cd "$bin"; pwd`
. $bin/install-config.sh


mkdir ~/.ssh
cp $FH_BASE_DIR/id_rsa.pub ~/.ssh
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 700 ~/.ssh/authorized_keys

echo "############################# Done ####################################"
