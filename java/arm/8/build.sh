#!/usr/bin/env bash

docker build -t temp .
docker tag temp williamoony/java8-arm:212
docker push williamoony/java8-arm:212
docker rmi temp