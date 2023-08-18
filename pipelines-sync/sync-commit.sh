#!/bin/bash

echo "Current Branch: $BRANCH_NAME"
echo "token: $GITHUB_TOKEN"

REPO_DESTINO="https://$GITHUB_TOKEN@github.com/fit-helder/osb-test-sync-wl1.git"

git config user.email "helder.lima@fitbank.com.br"
git config user.name "fit-helder"

git remote add destino $REPO_DESTINO

git add .

git commit -m 'update from source'

git push https://$GITHUB_TOKEN@github.com/fit-helder/osb-test-sync-wl1.git $BRANCH_NAME