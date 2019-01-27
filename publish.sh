#!/bin/sh

ver="0.4.2"

./build.sh
mkdir -p release
docker save hasq:$ver | gzip -c > ./release/hasq-$ver.tar.gz