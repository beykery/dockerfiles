#!/usr/bin/env bash

cd elasticsearch-analysis-ik-7.13.4
zip -r elasticsearch-analysis-ik-7.13.4.zip *
mv elasticsearch-analysis-ik-7.13.4.zip ../
cd ..
docker build --rm=true --no-cache --disable-content-trust=true -t williamoony/elasticsearch:7.13.4-cn .
docker push williamoony/elasticsearch:7.13.4-cn
rm -f elasticsearch-analysis-ik-7.13.4.zip
