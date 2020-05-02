#!/usr/bin/env bash

docker build -t temp .
docker tag temp williamoony/elasticsearch:7.6.2-cn
docker push williamoony/elasticsearch:7.6.2-cn
docker rmi temp

