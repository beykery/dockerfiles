#!/usr/bin/env bash

docker build -t java8:202 .
docker tag java8:202 williamoony/java8:202
docker push williamoony/java8:202
