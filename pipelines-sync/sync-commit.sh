#!/bin/bash

REPO_DESTINO="https://$GITHUB_TOKEN@github.com/fit-helder/osb-test-sync-wl1.git"

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

echo "===== GIT ADD ====="
git add .

echo "===== GIT COMMIT ====="
git commit -m 'update from source'

echo "===== GIT PUSH ====="
git push $BRANCH_NAME
