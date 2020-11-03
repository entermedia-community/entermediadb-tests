#!/bin/bash

echo "$BUILD_NUMBER"

[[ -d dir ]] || mkdir results
[[ -f dir/results10.csv ]] || touch results/results10.csv

./apache-jmeter-5.3/bin/jmeter -f -n -t em2/emshare2-em10.jmx -l results/results10.csv -JbuildNumber=$BUILD_NUMBER
JMEXIT=$?

while IFS=',' read -r a1 a2 a3 httpCode a5
do
  if [ "$httpCode" == "500" ]; then
    exit 1
  fi

done < results/results10.csv
<<<<<<< HEAD

echo "Exiting with code: $JMEXIT"
=======
>>>>>>> master
exit $JMEXIT
