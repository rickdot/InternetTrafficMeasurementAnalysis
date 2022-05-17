#!/bin/bash
echo iperf server 1: ok1.iperf.comnet-student.eu
date
iperf3 -c ok1.iperf.comnet-student.eu -t 10 -p$((RANDOM %11 +5200))
iperf3 -c ok1.iperf.comnet-student.eu -t 10 -p$((RANDOM %11 +5200)) -R 

sleep 1m

echo iperf server 2: blr1.iperf.comnet-student.eu
date
iperf3 -c blr1.iperf.comnet-student.eu -t 10 -p$((RANDOM %11 +5200))
iperf3 -c blr1.iperf.comnet-student.eu -t 10 -p$((RANDOM %11 +5200)) -R 
