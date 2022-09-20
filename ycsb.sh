#!/bin/bash
echo "Installing YCSB Dependencies"
#####################################################
echo "Installing Java"
sudo apt-get update -y
sudo apt install default-jdk -y
JAVAPATH=`update-alternatives --config java | cut -d ":" -f2 | grep -v "Nothing to configure" |cut -d " " -f2`
echo $JAVAPATH
echo "JAVA_HOME="$JAVAPATH"" > /etc/environment
source /etc/environment
echo $JAVAHOME
##########################################################
echo "Installing Python"
apt-get install python -y
#########################################################
echo "Installing YCSB"
wget https://github.com/brianfrankcooper/YCSB/releases/download/0.17.0/ycsb-mongodb-binding-0.17.0.tar.gz
tar -xvf ycsb-mongodb-binding-0.17.0.tar.gz
#############################################################
