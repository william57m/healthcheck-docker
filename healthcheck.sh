#!/bin/sh
while true
do
  curl ${PING_URL}
  sleep ${PING_INTERVAL_SEC}
done
