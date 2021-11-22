#!/bin/sh

PID=$(ps -ef | grep "fusion-message-server" | grep -v grep | awk '{print $2}')
if [[ "" != "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID

  sleep 3
fi

java -Dspring.config.location=/Users/luna/graduation-project/application/fusion-message/application-local.properties -jar /Users/luna/graduation-project/application/fusion-message/fusion-message-server-1.0.1-RELEASE.jar >> /Users/luna/graduation-project/application/fusion-message/logs/console.log &
