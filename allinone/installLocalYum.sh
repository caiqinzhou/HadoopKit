#!/bin/bash

bin=`dirname "$0"`
bin=`cd "$bin"; pwd`
. $bin/install-config.sh

yum -y install yum-utils createrepo

mkdir -p $FH_HADOOP_YUM
cd $FH_HADOOP_YUM
reposync -r cloudera-cdh3
mkdir -p $FH_HTTP_DIR/cdh/3/

rm -rf $FH_HTTP_DIR/cdh/3/*
cp -r $FH_HADOOP_YUM/cloudera-cdh3/RPMS $FH_HTTP_DIR/cdh/3/

cd $FH_HTTP_DIR/cdh/3/

createrepo .

echo "############################# Done ####################################"
