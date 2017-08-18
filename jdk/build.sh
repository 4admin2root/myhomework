#!/usr/bin/bash
docker build . -t 4admin2root/jdk:8
#docker login
docker push 4admin2root/jdk:8

docker build -f dockerfile.mvn . -t 4admin2root/maven:3.5
