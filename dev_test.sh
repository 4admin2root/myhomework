#!/usr/bin/bash
#cd myhomework/
which docker-compose || sudo pip install docker-compose
set -e
# maven install
sudo docker run  -i -v $PWD:/opt/myhomework -v $PWD/.m2:/root/.m2 -w /opt/myhomework 4admin2root/maven:3.5 mvn install
# docker-compose
sudo docker-compose up -d --build
sleep 60
curl http://localhost:8889/static/spring-cloud-starters.png
curl http://localhost:8889/
curl http://localhost:8889/hello/dev
