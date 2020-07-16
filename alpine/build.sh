#!/usr/bin/env bash

docker build --rm=true --no-cache --disable-content-trust=true -t williamoony/alpine:3.11.3 .
docker push williamoony/alpine:3.11.3
