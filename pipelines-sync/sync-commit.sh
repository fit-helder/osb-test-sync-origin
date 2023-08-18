#!/bin/bash

echo "Current Branch: $BRANCH_NAME"

REPO_ORIGEM="https://github.com/fit-helder/osb-test-sync-origin.git"
REPO_DESTINO="https://github.com/fit-helder/osb-test-sync-wl1.git"

git clone $REPO_ORIGEM .

git remote add destino $REPO_DESTINO

git push destino $BRANCH_NAME