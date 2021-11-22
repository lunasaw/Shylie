#!/bin/sh

PID=$(ps -ef | grep "sweeney-server" | grep -v grep | awk '{print $2}')
if [[ "" != "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID

  sleep 3
fi


cd /Users/luna/graduation-project/application/sweeney
java -Dspring.config.location=/Users/luna/graduation-project/application/sweeney/application-local.properties -jar /Users/luna/graduation-project/application/sweeney/sweeney-server-1.8-RELEASE.jar >> /Users/luna/graduation-project/application/sweeney/logs/console.log &
