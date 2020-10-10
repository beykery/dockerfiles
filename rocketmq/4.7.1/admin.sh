#!/usr/bin/env bash

cp ./admin.Dockerfile Dockerfile
docker build --rm=true --no-cache --disable-content-trust=true  -t williamoony/rocketmq-admin:4.7.1 .
docker push williamoony/rocketmq-admin:4.7.1
rm -f ./Dockerfile