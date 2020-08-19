#!/usr/bin/env bash

cd elasticsearch-analysis-ik-7.8.1
zip -r elasticsearch-analysis-ik-7.8.1.zip *
mv elasticsearch-analysis-ik-7.8.1.zip ../
cd ..
docker build --rm=true --no-cache --disable-content-trust=true -t williamoony/elasticsearch:7.8.1-cn .
docker push williamoony/elasticsearch:7.8.1-cn
rm -f elasticsearch-analysis-ik-7.8.1.zip
