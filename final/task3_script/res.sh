#!/bin/bash

dom1=${1:-lej-de.ark.caida.org}
dom2=${2:-per-au.ark.caida.org}
dom3=${3:-san-us.ark.caida.org}

ping -c 5 $dom1 -D -O >> ~/assignment2/res1ping.txt
ping -c 5 $dom2 -D -O >> ~/assignment2/res2ping.txt
ping -c 5 $dom3 -D -O >> ~/assignment2/res3ping.txt
