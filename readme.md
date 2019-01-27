# HASQ Docker

This repository contains dockerfile for HASQ blockchain. For more details about HASQ technology access its [website](http://hasq.org/) or [source code repository](https://github.com/hasq/dev).

HASQ image is based on Alpine Linux image and takes around 13 MB of space. It contains the hasq server itself and web-client for working with it.

## Build HASQ image

To build the image run `build.sh` in shell.

## Use pre-built image

It's possible to use pre-built image. To do it download required release from releases page and run in the shell

```shell
docker load < hasq-0.4.2.tar.gz
```

## Run HASQ

To run HASQ in container execute the following command in shell

```shell
docker run -it --name hasq -p 13131:13131/tcp hasq:latest
```

After start open in browser `http://localhost:13131/home/tsclnt.html` to launch web-client.