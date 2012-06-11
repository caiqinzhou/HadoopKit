#!/bin/bash

bin=`dirname "$0"`
bin=`cd "$bin"; pwd`
. $bin/install-config.sh


#mkdir -p $HADOOP_HOME/logs/logs_bak
#rm -rf $HADOOP_HOME/logs/logs_bak/*
#mv $HADOOP_HOME/logs/hadoop-* $HADOOP_HOME/logs/logs_bak/

rm -rf $HADOOP_HOME/logs/hadoop-*.out*
rm -rf $HADOOP_HOME/logs/hadoop-*.log*

echo "############################# Done ####################################"

