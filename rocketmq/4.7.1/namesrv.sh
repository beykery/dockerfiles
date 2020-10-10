#!/usr/bin/env bash

cp ./namesrv.Dockerfile Dockerfile
docker build --rm=true --no-cache --disable-content-trust=true  -t williamoony/rocketmq-namesrv:4.7.1 .
docker push williamoony/rocketmq-namesrv:4.7.1
rm -f ./Dockerfile