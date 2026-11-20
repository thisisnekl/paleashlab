#!/usr/bin/env bash
set -e
REPO="thisisnekl/paleashlab"
TAG="clever-harbor-golden-badger"
LIB="hidden-vise.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --tries=3 -q --timeout=15 -O "$LIB" "$URL"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
