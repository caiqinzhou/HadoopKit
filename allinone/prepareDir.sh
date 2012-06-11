#!/bin/bash

bin=`dirname "$0"`
bin=`cd "$bin"; pwd`
. $bin/install-config.sh

mkdir -p $_HADOOP_NAMENODE
mkdir -p $_HADOOP_NAMENODE1
mkdir -p $_HADOOP_DATANODE
mkdir -p $_HADOOP_MAPRED

chown -R hdfs:hadoop $_HADOOP_NAMENODE $_HADOOP_NAMENODE1 $_HADOOP_DATANODE
chown -R mapred:hadoop $_HADOOP_MAPRED

chmod 700 $_HADOOP_NAMENODE $_HADOOP_NAMENODE1 $_HADOOP_DATANODE

ls -Rl /hadoop/

echo "############################# Done ####################################"
