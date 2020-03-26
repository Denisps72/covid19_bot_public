#!/bin/bash
if [ -n $SERVICE_TYPE ]
then
  if [ $SERVICE_TYPE == "covid19_rus_bot" ]
  then
    exec python app.py
    exit
  fi
else
  echo -e "SERVICE_TYPE not set\n"
fi
