#!/bin/bash

[[ -d dir ]] || mkdir results

./apache-jmeter-4.0/bin/jmeter -n -t MediaDB/upload_script.jmx -l results/resulttest.csv
