#!/bin/bash

echo "Current Branch: $BRANCH_NAME"
echo "token: $GITHUB_TOKEN"

# Configurar identidade do autor
git config user.email "helder.lima@fitbank.com.br"
git config user.name "fit-helder"

# Verificar o estado atual do repositório
echo "===== GIT STATUS ====="
git status

# Verificar branches locais
echo "===== GIT BRANCH ====="
git branch

REPO_DESTINO="https://$GITHUB_TOKEN@github.com/fit-helder/osb-test-sync-wl1.git"

git remote add destino $REPO_DESTINO

git add .

git commit -m 'update from source'

git push destino $BRANCH_NAME
