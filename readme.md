# HASQ Docker

This repository contains dockerfile for [HASQ blockchain](http://hasq.org/) ([GitHub repository](https://github.com/hasq/dev)).

## Build HASQ image

To build the image run `build.sh` in shell.

## Run HASQ

To run HASQ in container execute the following command in shell
```shell
docker run -it --name hasq -p 13131:13131/tcp hasq:latest
```