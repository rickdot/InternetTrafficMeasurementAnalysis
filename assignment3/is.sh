#!/bin/bash
#rest 1 minute

echo iperf server 1: ok1.iperf.comnet-student.eu
date
ping -c 5 ok1.iperf.comnet-student.eu -O -D

sleep 1m

echo request 1K.bin file from ok1.iperf.comnet-student.eu
date
export LANG=C
fmt="%{time_namelookup}, %{time_connect}, %{time_starttransfer}, %{time_total}\n"
echo time_namelookup, time_connect, time_starttransfer, time_total
curl -w "$fmt" -o /dev/null -s ${1:-http://ok1.iperf.comnet-student.eu:80/1K.bin}

sleep 1m

echo iperf server 2: blr1.iperf.comnet-student.eu
date
ping -c 5 blr1.iperf.comnet-student.eu -O -D

sleep 1m

echo request 1K.bin file from blr1.iperf.comnet-student.eu
date
export LANG=C
fmt="%{time_namelookup}, %{time_connect}, %{time_starttransfer}, %{time_total}\n"
echo time_namelookup, time_connect, time_starttransfer, time_total
curl -w "$fmt" -o /dev/null -s ${1:-http://blr1.iperf.comnet-student.eu:80/1K.bin}

sleep 1m

