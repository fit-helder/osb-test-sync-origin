#!/bin/bash

echo "Current Branch: $(Build.SourceBranchName)"

REPO_ORIGEM="https://github.com/fit-helder/osb-test-sync-origin.git"
REPO_DESTINO="https://github.com/fit-helder/osb-test-sync-wl1.git"
BRANCH=$BRANCH

git clone $REPO_ORIGEM repo-temp
cd repo-temp

git remote add destino $REPO_DESTINO

git push destino $BRANCH

cd ..
rm -rf repo-temp