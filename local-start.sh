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


HOME_PATH=/Users/luna/graduation-project/application
SHELL_NAME=local-start.sh
# user
APPLICATION=fusion-user
sh $HOME_PATH/$APPLICATION/$SHELL_NAME
# message
APPLICATION=fusion-message
sh $HOME_PATH/$APPLICATION/$SHELL_NAME
# sweeney
APPLICATION=sweeney
cd $HOME_PATH/$APPLICATION/
sh $SHELL_NAME
# wednesday
APPLICATION=wednesday
sh $HOME_PATH/$APPLICATION/$SHELL_NAME