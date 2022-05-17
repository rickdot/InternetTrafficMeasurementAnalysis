#!/bin/bash

dom1=${1:-ok1.iperf.comnet-student.eu}
dom2=${2:-http://ok1.iperf.comnet-student.eu/1K.bin}
dom3=${3:-blr1.iperf.comnet-student.eu}
dom4=${4:-http://blr1.iperf.comnet-student.eu/1K.bin}

ping -c 5 ok1.iperf.comnet-student.eu -D -O >> ~/assignment2/iperf1ping.txt
ping -c 5 blr1.iperf.comnet-student.eu -D -O >> ~/assignment2/iperf2ping.txt

echo Start $(date +%s) >> ~/assignment2/iperf1curl.txt
curl -o /dev/null -s ${2:-http://ok1.iperf.comnet-student.eu/1K.bin} -w "%{time_namelookup}, %{time_connect}, %{time_starttransfer}, %{time_total},%{speed_download},%{size_download}\n" >> ~/assignment2/iperf1curl.txt
echo Start $(date +%s) >> ~/assignment2/iperf2curl.txt
curl -o /dev/null -s ${4:-http://blr1.iperf.comnet-student.eu/1K.bin} -w "%{time_namelookup}, %{time_connect}, %{time_starttransfer}, %{time_total},%{speed_download},%{size_download}\n" >> ~/assignment2/iperf2curl.txt


