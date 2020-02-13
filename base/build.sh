#!/usr/bin/env bash

docker build -t ap:3.11.3 .
docker tag ap:3.11.3 williamoony/alpine:3.11.3
docker push williamoony/alpine:3.11.3
