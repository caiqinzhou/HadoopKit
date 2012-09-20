allinone
=========

allinone tool is a simple to setup hadoop cluster quickly.

Base dir /root/allinone

=========
# Prepare Master

* modify install-config.sh
* modify hosts and deploy-hosts files
* modify local-cloudera-cdh3.repo to change the host to master
* modify conf.cluster configurations, such as master and slaves files
* ./prepareEnv.sh ###install jdk
* ./installhadoop.sh ###install hadoop from cloudera
* ./prepareDir.sh ###to prepare directory for hadoop
* ./changehosts.sh ###config /etc/hosts
* ./generateSSHKey.sh ###generate ssh from control remote client
* ./installLocalYum.sh ###install local repository for hadoop(take a long time to download files from cloudera)
* ./deploy.sh ###deploy config to every host
* ./runcluster.sh <command> ###run command on every host
    ./runcluster.sh /root/allinone/insertKey.sh ###insert ssh key
    ./runcluster.sh echo "OK" ###test ssh is ok


# Prepare Slaves
* run command on master
    ./runslaves.sh /root/allinone/installdatanode.sh
