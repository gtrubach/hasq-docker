#!/bin/sh

ver="0.4.2"

./build.sh
mkdir -p release
docker save -o ./release/hasq-$ver.tar hasq:$ver