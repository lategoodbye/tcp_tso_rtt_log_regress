#!/bin/sh

SETTING=`cat /proc/sys/net/ipv4/tcp_tso_rtt_log`

exec 1>nstat_$SETTING.log

uname -a
echo
nstat -n

while true; do
  date
  nstat 
  sleep 1
done

