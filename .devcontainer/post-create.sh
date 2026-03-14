#!/bin/bash

echo "🔧 Updating system..."
sudo apt update -y
sudo apt install -y jq tree unzip ripgrep
sudo apt clean

echo "📦 Installing global Node tools..."
npm install -g yarn pnpm eslint prettier typescript

echo "🌐 Installing Wix CLI..."
npm install -g @wix/cli

echo "🐍 Installing Python tools..."
pip install --upgrade pip --no-cache-dir
pip install --no-cache-dir \
black \
flake8 \
requests \
pandas \
openpyxl \
fastapi \
uvicorn

echo "🔧 Configuring Git..."
git config --global init.defaultBranch main

echo "🚀 Dev environment ready!"
