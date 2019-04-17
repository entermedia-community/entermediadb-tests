#!/bin/bash

[[ -d dir ]] || mkdir results
[[ -f dir/resulttest.csv ]] || touch results/resulttest.csv

./apache-jmeter-4.0/bin/jmeter -f -n -t MediaDB/upload_script_em9dev.jmx -l results/resulttest.csv

while IFS=',' read -r a1 a2 a3 httpCode a5
do
  if [ "$httpCode" == "500" ]; then
    exit 1
  fi

done < results/resulttest.csv
exit 0
