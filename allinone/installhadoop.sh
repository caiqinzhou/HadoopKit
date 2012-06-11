#!/bin/bash

bin=`dirname "$0"`
bin=`cd "$bin"; pwd`
. $bin/install-config.sh

mkdir $FH_BASE_DIR/soft
cd $FH_BASE_DIR/soft
wget http://archive.cloudera.com/redhat/cdh/cdh3-repository-1.0-1.noarch.rpm
yum -y --nogpgcheck localinstall cdh3-repository-1.0-1.noarch.rpm
rpm -y --import http://archive.cloudera.com/redhat/cdh/RPM-GPG-KEY-cloudera
yum -y install hadoop-0.20 hadoop-0.20-native hadoop-0.20-conf-pseudo.noarch

#echo "export JAVA_HOME=/usr/lib/jvm/java-1.6.0" >> ~/.bashrc

echo "############################# Done ####################################"
