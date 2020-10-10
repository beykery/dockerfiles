#!/usr/bin/env bash

cp ./broker.Dockerfile Dockerfile
docker build --rm=true --no-cache --disable-content-trust=true  -t williamoony/rocketmq-broker:4.7.1 .
docker push williamoony/rocketmq-broker:4.7.1
rm -f ./Dockerfile