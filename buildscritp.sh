#!/bin/bash
#get into the hello-world-war folder
cd hello-world-war
git pull origin master
#run the maven package(before running this we need to install java and maven)
mvn package
#copy the war file to webapps in root directory
sudo cp -R target/hello-world-war-1.0.0.war /opt/apache-tomcat-10.0.27/webapps/
sh /opt/apache-tomcat-10.0.27/bin/shutdown.sh
sleep 2
sh /opt/apache-tomcat-10.0.27/bin/startup.sh
