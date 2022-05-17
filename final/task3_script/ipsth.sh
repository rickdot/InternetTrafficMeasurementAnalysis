#!/bin/bash

dom1=${1:-ok1.iperf.comnet-student.eu}
dom2=${2:-http://ok1.iperf.comnet-student.eu/10M.bin}
dom3=${3:-blr1.iperf.comnet-student.eu}
dom4=${4:-http://blr1.iperf.comnet-student.eu/10M.bin}

echo Start $(date +%s) >> ~/assignment2/th1curl.txt
curl -o /dev/null -s $dom2 -w "%{time_namelookup}, %{time_connect}, %{time_starttransfer}, %{time_total},%{speed_download},%{size_download}\n" >> ~/assignment2/th1curl.txt
echo Start $(date +%s) >> ~/assignment2/th2curl.txt
curl -o /dev/null -s $dom4 -w "%{time_namelookup}, %{time_connect}, %{time_starttransfer}, %{time_total},%{speed_download},%{size_download}\n" >> ~/assignment2/th2curl.txt

iperf3 -c $dom1 -p $(($RANDOM % 11 + 5200)) -J > ~/assignment2/one$(date +%s).json
iperf3 -c $dom1 -p $(($RANDOM % 11 + 5200)) -R -J > ~/assignment2/rone$(date +%s).json
iperf3 -c $dom3 -p $(($RANDOM % 11 + 5200)) -J > ~/assignment2/two$(date +%s).json
iperf3 -c $dom3 -p $(($RANDOM % 11 + 5200)) -R -J > ~/assignment2/rtwo$(date +%s).json
