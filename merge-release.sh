#!/bin/bash

REPOS="/var/jenkins_home/jobs/em9_tests/workspace/repos/"
APP_EMSHARE="$REPOS/app-emshare"
EM_SERVER="$REPOS/entermedia-server"
EM_CORE="$REPOS/entermedia-core"
EXT_OPENDIT="$REPOS/extension-openedit"
DEMOALL="$REPOS/demoall"

if [ ! -d "$REPOS" ]; then
  mkdir $REPOS
fi

if [ ! -d "$APP_EMSHARE" ]; then
  git clone git@github.com:entermedia-community/app-emshare.git
fi
cd $APP_EMSHARE
git pull
git checkout entermedia9
git merge origin/em9dev
git push

if [ ! -d "$EM_SERVER" ]; then
  git clone git@github.com:entermedia-community/entermedia-server.git
fi
cd $EM_SERVER
git pull
git checkout entermedia9
git merge origin/em9dev
git push

if [ ! -d "$EM_CORE" ]; then
  git clone git@github.com:entermedia-community/entermedia-core.git
fi
cd $EM_CORE
git pull
git checkout entermedia9
git merge origin/em9dev
git push

if [ ! -d "$EXT_OPENDIT" ]; then
  git clone git@github.com:entermedia-community/extension-openedit.git
fi
cd $EXT_OPENDIT
git pull
git checkout entermedia9
git merge origin/em9dev
git push

if [ ! -d "$DEMOALL" ]; then
  git clone git@github.com:entermedia-community/demoall.git
fi
cd $DEMOALL
git pull
git checkout entermedia9
git merge origin/em9dev
git push
