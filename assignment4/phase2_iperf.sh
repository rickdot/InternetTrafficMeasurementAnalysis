#!/bin/bash
iperf3 -c ok1.iperf.comnet-student.eu -t 10 -p$((RANDOM %11 +5200)) -J > ~/data4/$(date +%s).json 2>&1
iperf3 -c ok1.iperf.comnet-student.eu -t 10 -R -p$((RANDOM %11 +5200)) -J > ~/data4/r$(date +%s).json 2>&1


