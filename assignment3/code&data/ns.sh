#!/bin/bash

echo name server 1: d.nic.fr
date
ping -c 1 d.nic.fr -O -D
dig www.lejournaldemayotte @d.nic.fr | fgrep time

echo name server 2: e.ext.nic.fr
date
ping -c 1 e.ext.nic.fr -O -D
dig www.lejournaldemayotte @e.ext.nic.fr | fgrep time

echo name server 3: f.ext.nic.fr
date
ping -c 1 f.ext.nic.fr -O -D
dig www.lejournaldemayotte @f.ext.nic.fr | fgrep time

