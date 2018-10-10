#!/bin/bash

[[ -d dir ]] || mkdir results

./apache-jmeter-4.0/bin/jmeter -f -n -t MediaDB/upload_script.jmx -l results/resulttest.csv
