#!/bin/bash

echo research server 1: lej-de.ark.caida.org
date
ping -c 5 lej-de.ark.caida.org -O -D

echo research server 2: per-au.ark.caida.org
date
ping -c 5 per-au.ark.caida.org -O -D

echo research server 3: san-us.ark.caida.org
date
ping -c 5 san-us.ark.caida.org -O -D
