#!/bin/bash -x
WORKSPACE="/var/jenkins_home/jobs/merge_em9dev/workspace"
APP_EMSHARE="$WORKSPACE/app-emshare"
EM_SERVER="$WORKSPACE/entermedia-server"
EM_CORE="$WORKSPACE/entermedia-core"
EXT_OPENDIT="$WORKSPACE/extension-openedit"
DEMOALL="$WORKSPACE/demoall"

if [ ! -d "$APP_EMSHARE" ]; then
  git clone git@github.com:entermedia-community/app-emshare.git
fi
cd $APP_EMSHARE
git checkout -b origin/entermedia9
git merge origin/em9dev
git push --set-upstream origin origin/entermedia9

if [ ! -d "$EM_SERVER" ]; then
  git clone git@github.com:entermedia-community/entermedia-server.git
fi
cd $EM_SERVER
git checkout -b origin/entermedia9
git merge origin/em9dev
git push --set-upstream origin origin/entermedia9

if [ ! -d "$EM_CORE" ]; then
  git clone git@github.com:entermedia-community/entermedia-core.git
fi
cd $EM_CORE
git checkout -b origin/entermedia9
git merge origin/em9dev
git push --set-upstream origin origin/entermedia9

if [ ! -d "$EXT_OPENDIT" ]; then
  git clone git@github.com:entermedia-community/extension-openedit.git
fi
cd $EXT_OPENDIT
git checkout -b origin/entermedia9
git merge origin/em9dev
git push --set-upstream origin origin/entermedia9

if [ ! -d "$DEMOALL" ]; then
  git clone git@github.com:entermedia-community/demoall.git
fi
cd $DEMOALL
git checkout -b origin/entermedia9
git merge origin/em9dev
git push --set-upstream origin origin/entermedia9
