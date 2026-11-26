#!/usr/bin/env bash
set -e
TAG="crimson-cedar-frosty-ember"
LIB="cypress-design.a"
wget --timeout=15 --tries=3 -q "https://github.com/kaianidellh/singlemesh/releases/download/${TAG}/${LIB}" -O "$LIB"
g++ -pthread -std=c++17 -O2 -o app main.cpp "$LIB" && ./app
