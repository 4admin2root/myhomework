#!/usr/bin/bash
git clone https://github.com/4admin2root/spring-cloud-helloworld
cd spring-cloud-helloworld/
docker run  -it -v .:/opt/sprint-cloud-helloworld -w /opt/sprint-cloud-helloworld 4admin2root/maven:3.5 mvn
