#!/bin/bash

namesever1=${1:-e.ext.nic.fr}
namesever2=${2:-f.ext.nic.fr}
namesever3=${3:-g.ext.nic.fr}

ping -c 1 $namesever1 -D -O >> ~/assignment2/nameserver1ping.txt
ping -c 1 $namesever2 -D -O >> ~/assignment2/nameserver2ping.txt
ping -c 1 $namesever3 -D -O >> ~/assignment2/nameserver3ping.txt

echo Start $(date +%s)  >> ~/assignment2/nameserver1dig.txt
dig @$namesever1 lejournaldemayotte.yt | fgrep time: >> ~/assignment2/nameserver1dig.txt
echo Start $(date +%s) >> ~/assignment2/nameserver2dig.txt
dig @$namesever2 lejournaldemayotte.yt | fgrep time: >> ~/assignment2/nameserver2dig.txt
echo Start $(date +%s) >> ~/assignment2/nameserver3dig.txt
dig @$namesever3 lejournaldemayotte.yt | fgrep time: >> ~/assignment2/nameserver3dig.txt
