#!/bin/sh

PID=$(ps -ef | grep "sweeney-server" | grep -v grep | awk '{print $2}')
if [[ "" != "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID

  sleep 3
fi


HOME_PATH=/Users/luna/graduation-project/application
PROFILE=application-local.properties
JAR_VERSION=sweeney-server-1.8-RELEASE.jar
APPLICATION=sweeney
LOG_PATH=$HOME_PATH/$APPLICATION/logs
rm -rf $LOG_PATH
mkdir $HOME_PATH/$APPLICATION/logs
$HOME_PATH/jre-mac/bin/java  -Dspring.config.location=$HOME_PATH/$APPLICATION/$PROFILE -jar $HOME_PATH/$APPLICATION/$JAR_VERSION >> $HOME_PATH/$APPLICATION/logs/console.log &
