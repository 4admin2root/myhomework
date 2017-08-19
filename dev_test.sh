#!/usr/bin/bash
#cd myhomework/
set -e
# maven install
sudo docker run  -i -v $PWD:/opt/myhomework -v $PWD/.m2:/root/.m2 -w /opt/myhomework 4admin2root/maven:3.5 mvn install
# docker-compose
export TAG =
docker-compose up --build
curl http://localhost:8888/
curl http://localhost:8888/hello/dev
curl http://localhost:8888/static/spring-cloud-starters.png
