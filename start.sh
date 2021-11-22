#!/bin/sh
PID=$(ps -ef | grep "fusion-user" | grep -v grep | awk '{print $2}')
if [[ "" != "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID

  sleep 3
fi
PID=$(ps -ef | grep "fusion-message" | grep -v grep | awk '{print $2}')
if [[ "" != "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID

  sleep 3
fi
PID=$(ps -ef | grep "wednesday" | grep -v grep | awk '{print $2}')
if [[ "" != "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID

  sleep 3
fi
PID=$(ps -ef | grep "sweeney" | grep -v grep | awk '{print $2}')
if [[ "" != "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID

  sleep 3
fi

# user
cd /Users/luna/graduation-project/application/fusion-user
java -Dspring.config.location=/Users/luna/graduation-project/application/fusion-user/application-local.properties -jar /Users/luna/graduation-project/application/fusion-user/fusion-user-server-1.0-RELEASE.jar >> /Users/luna/graduation-project/application/fusion-user/logs/console.log &

# message
cd /Users/luna/graduation-project/application/fusion-message
java -Dspring.config.location=/Users/luna/graduation-project/application/fusion-message/application-local.properties -jar /Users/luna/graduation-project/application/fusion-message/fusion-message-server-1.0.1-RELEASE.jar >> /Users/luna/graduation-project/application/fusion-message/logs/console.log &

# sweeney
cd /Users/luna/graduation-project/application/sweeney
java -Dspring.config.location=/Users/luna/graduation-project/application/sweeney/application-local.properties -jar /Users/luna/graduation-project/application/sweeney/sweeney-server-1.8-RELEASE.jar >> /Users/luna/graduation-project/application/sweeney/logs/console.log &

# wednesday
cd /Users/luna/graduation-project/application/wednesday
java -Dspring.config.location=/Users/luna/graduation-project/application/wednesday/application-local.properties -jar /Users/luna/graduation-project/application/wednesday/wednesday-server-1.0.1-RELEASE.jar >> /Users/luna/graduation-project/application/wednesday/logs/console.log &
