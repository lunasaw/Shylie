#!/bin/sh

PID=$(ps -ef | grep "wednesday-server" | grep -v grep | awk '{print $2}')
if [[ "" != "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID

  sleep 3
fi

java -Dspring.config.location=/Users/luna/graduation-project/application/wednesday/application.properties -jar /Users/luna/graduation-project/application/wednesday/wednesday-server-1.0.1-RELEASE.jar >> /Users/luna/graduation-project/application/wednesday/logs/console.log &
