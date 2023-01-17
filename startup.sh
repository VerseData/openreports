#!/bin/sh
export CATALINA_HOME=tomcat
cd ./database
./start-database.sh & 
cd ..
./tomcat/bin/catalina.sh run
