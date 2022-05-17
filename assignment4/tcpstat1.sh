#!/bin/bash
tcpstat -o "%s\t%N\t%n\t%V\t%I\t%T\t%U\t%C\t%b\t%p\n" -r capture_2_2 >> data.csv
