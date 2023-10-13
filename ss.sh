#!/bin/sh

ALGO=`cat /proc/sys/net/ipv4/tcp_congestion_control`
SETTING=`cat /proc/sys/net/ipv4/tcp_tso_rtt_log`

exec 1>ss_$SETTING.log

uname -a
echo
ip link show dev enp45s0 
echo
echo "tcp_congestion_control: $ALGO"
echo "tcp_tso_rtt_log: $SETTING"
echo

while true; do
  date
  ss -tenmoi
  sleep 1
done

