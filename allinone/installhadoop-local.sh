#!/bin/bash

bin=`dirname "$0"`
bin=`cd "$bin"; pwd`
. $bin/install-config.sh

cp $FH_BASE_DIR/local-cloudera-cdh3.repo /etc/yum.repos.d/
yum update
yum -y install hadoop-0.20 hadoop-0.20-native hadoop-0.20-conf-pseudo.noarch

#echo "export JAVA_HOME=/usr/lib/jvm/java-1.6.0" >> ~/.bashrc

echo "############################# Done ####################################"
