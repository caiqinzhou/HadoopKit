#!/bin/bash

bin=`dirname "$0"`
bin=`cd "$bin"; pwd`
. $bin/install-config.sh

cp -r $FH_BASE_DIR/conf.cluster /etc/hadoop/

alternatives --install /etc/hadoop-0.20/conf hadoop-0.20-conf /etc/hadoop-0.20/conf.cluster 50
alternatives --set hadoop-0.20-conf /etc/hadoop-0.20/conf.cluster
alternatives --display hadoop-0.20-conf

echo "############################# Done ####################################"
