#!/bin/sh

ver="0.4.2"

docker build -t hasq:$ver .

while getopts "l" opt; do
    case "$opt" in
    l)  docker tag hasq:$ver hasq:latest
        ;;
    esac
done