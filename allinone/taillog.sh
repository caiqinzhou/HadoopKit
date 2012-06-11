#!/bin/bash

bin=`dirname "$0"`
bin=`cd "$bin"; pwd`
. $bin/install-config.sh

ls -l $HADOOP_HOME/logs/
tail -f $HADOOP_HOME/logs/hadoop-*
