#!/bin/bash
echo assignment 1.3
#iperf3 -c ok1.iperf.comnet-student.eu -t 10 -p$((RANDOM%11+5200)) -J > ~/studies/itma/assignment1_3/$(date +%s).json 2>&1
#iperf3 -c ok1.iperf.comnet-student.eu -t 10 -p$((RANDOM%11+5200)) -R -J > ~/studies/itma/assignment1_3/$(date +%s).json 2>&1
iperf3 -c ok1.iperf.comnet-student.eu -t 10 -R
