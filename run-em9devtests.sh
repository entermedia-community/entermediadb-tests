#!/bin/bash

[[ -d dir ]] || mkdir results
[[ -f dir/resulttest.csv ]] || touch results/resulttest.csv

./apache-jmeter-4.0/bin/jmeter -f -n -t MediaDB/upload_script_em9dev.jmx -l results/resulttest.csv
