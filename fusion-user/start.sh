#!/bin/sh

PID=$(ps -ef | grep "fusion-user-server" | grep -v grep | awk '{print $2}')
if [[ "" != "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID

  sleep 3
fi

java -Dspring.config.location=/Users/luna/graduation-project/application/fusion-user/application-local.properties -jar /Users/luna/graduation-project/application/fusion-user/fusion-user-server-1.0-RELEASE.jar >> /Users/luna/graduation-project/application/fusion-user/logs/console.log &
