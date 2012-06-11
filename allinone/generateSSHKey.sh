#!/bin/bash

ssh-keygen

cp /root/.ssh/id_rsa $FH_BASE_DIR
cp /root/.ssh/id_rsa.pub $FH_BASE_DIR
