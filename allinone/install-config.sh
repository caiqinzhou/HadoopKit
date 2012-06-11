#!/bin/bash

bin=`dirname "$0"`
bin=`cd "$bin"; pwd`

#FH_BASE_DIR=/root/allinone
FH_BASE_DIR=$bin
FH_HADOOP_YUM=/root/hadooprpm
FH_HTTP_DIR=/var/www/html/


_HADOOP_NAMENODE=/hadoop/dfs/nn
_HADOOP_NAMENODE1=/hadoop/dfs/nn1
_HADOOP_DATANODE=/hadoop/dfs/dn
_HADOOP_MAPRED=/hadoop/mapred/local

HADOOP_HOME=/usr/lib/hadoop/
