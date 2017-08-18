#!/usr/bin/bash
#cd myhomework/
# build
sudo docker build . -t 4admin2root/cloud-simple-helloworld:latest
# run docker
sudo docker run -d -p 8888:8080 4admin2root/cloud-simple-helloworld:latest
