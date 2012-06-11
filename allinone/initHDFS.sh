#!/bin/bash

sudo -u hdfs hadoop fs -mkdir /tmp
sudo -u hdfs hadoop fs -chmod -R 1777 /tmp
sudo -u hdfs hadoop fs -mkdir /mapred/system
sudo -u hdfs hadoop fs -chown mapred:hadoop /mapred/system
