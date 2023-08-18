#!/bin/bash

echo "Current Branch: $BRANCH_NAME"

REPO_ORIGEM="https://github.com/fit-helder/osb-test-sync-origin.git"
REPO_DESTINO="https://github.com/fit-helder/osb-test-sync-wl1.git"

git remote add destino $REPO_DESTINO

git add .

git commit -m 'update from source'

git push destino $BRANCH_NAME