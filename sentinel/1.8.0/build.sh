#!/usr/bin/env bash

docker build --rm=true --no-cache --disable-content-trust=true  -t williamoony/sentinel:1.8.0 .
docker push williamoony/sentinel:1.8.0
