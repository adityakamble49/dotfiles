#!/bin/bash

# clone or update the repo sync
if [ ! -d ~/.repo-sync ]; then
    git clone git@gitlab.com:adityakamble49/repo-sync.git ~/.repo-sync
else
    cd ~/.repo-sync
    git pull
fi

# start repo sync
source ~/.repo-sync/sync-repos.sh
