#!/bin/bash


bin=`dirname "$0"`
bin=`cd "$bin"; pwd`
. $bin/install-config.sh


ssh-keygen

cp /root/.ssh/id_rsa $FH_BASE_DIR
cp /root/.ssh/id_rsa.pub $FH_BASE_DIR
