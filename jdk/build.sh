#!/usr/bin/bash
docker build . -t 4admin2root/jdk:8
#docker login
docker push 4admin2root/jdk:8
