#!/bin/bash
echo "script for installation of apachetomcat"
cd /opt
wget  https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.27/bin/apache-tomcat-10.0.27.tar.gz
ls
sudo tar -xzvf apache-tomcat-10.0.27.tar.gz
cd apache-tomcat-10.0.27/
cd bin
sh startup.sh
