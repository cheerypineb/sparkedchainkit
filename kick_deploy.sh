#!/usr/bin/env bash
set -e
REPO="cheerypineb/sparkedchainkit"
LIB="cherry-bureau.a"
URL="https://github.com/${REPO}/releases/download/cosmic-forest-crimson-delta/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
