#!/usr/bin/env bash

cd elasticsearch-analysis-ik-7.6.2
zip -r elasticsearch-analysis-ik-7.6.2.zip *
mv elasticsearch-analysis-ik-7.6.2.zip ../
cd ..
docker build -t temp .
docker tag temp williamoony/elasticsearch:7.6.2-cn
docker push williamoony/elasticsearch:7.6.2-cn
docker rmi temp
rm -f elasticsearch-analysis-ik-7.6.2.zip
