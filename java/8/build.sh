#!/usr/bin/env bash

docker build --rm=true --no-cache --disable-content-trust=true  -t java8:202 .
docker tag java8:202 williamoony/java8:202
docker push williamoony/java8:202
