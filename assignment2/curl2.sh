#!/bin/bash
echo 
echo Yanghang Zeng
date
iperf3 -c ok1.iperf.comnet-student.eu -t -p 5209
iperf3 -c ok1.iperf.comnet-student.eu -t -p 5209 -R
export LANG=C
fmt="%{speed_download}, %{size_download}\n"
echo speed_download
curl -w "$fmt" -o /dev/null -s ${1:-ok1.iperf.comnet-student.eu/500M.bin}
#curl -o /dev/null ok1.iperf.comnet-student.eu/500M.bin
