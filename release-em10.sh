#!/bin/bash -x

#-$BUILD_NUMBER Current project Build Number from Jenkins

JOB_NAME="em10_demoall"
LASTSUCCESS_DEMOALL=$(cat ../../../jobs/$JOB_NAME/builds/permalinks | grep lastSuccessfulBuild | sed 's/lastSuccessfulBuild //')
WAR_FILE="../../../jobs/$JOB_NAME/builds/$LASTSUCCESS_DEMOALL/archive/deploy/ROOT.war"
cp -rp  $WAR_FILE .
