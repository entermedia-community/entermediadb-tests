#!/bin/bash

[[ -d dir ]] || mkdir results

./apache-jmeter-4.0/bin/jmeter -f -n -t MediaDB/upload_script_em9dev.jmx -l results/resulttest.csv
