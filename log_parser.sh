#!/bin/bash

awk -f clean_log_file.awk $1
echo "The longest request is -"
cat tmp.txt | pcregrep -o1 -o4 -i '((POST|GET) ".*"\s)(for.*in\s)(\d+)' | awk {'print $1 " "$2, $3"ms"'} | sort -n -r -k3 | head -1
rm tmp.txt