#!/bin/bash

./apache-jmeter-4.0/bin/jmeter -n -t MediaDB/upload_script.jmx -l resulttest.jtl
