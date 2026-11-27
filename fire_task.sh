#!/usr/bin/env bash
set -e
TAG="golden-harbor-gentle-anchor"
LIB="flat-rail.a"
wget --timeout=15 -O "$LIB" --tries=3 -q "https://github.com/dellaspireb/freshtube/releases/download/${TAG}/${LIB}"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
