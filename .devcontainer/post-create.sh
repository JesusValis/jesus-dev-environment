#!/bin/bash

echo "Actualizando sistema..."
sudo apt update

echo "Instalando utilidades..."
sudo apt install -y jq tree unzip ripgrep

echo "Instalando herramientas Node..."
npm install -g yarn pnpm typescript eslint prettier

echo "Instalando Wix CLI..."
npm install -g @wix/cli

echo "Instalando herramientas Python..."
pip install --upgrade pip
pip install black flake8 requests pandas openpyxl fastapi uvicorn

echo "Configurando Git..."
git config --global init.defaultBranch main

echo "Entorno listo 🚀"
