#!/usr/bin/bash
#cd myhomework/
# build
sudo docker build . -t 4admin2root/cloud-simple-helloworld:latest
# run docker
echo 'run docker image'
set +e
sudo docker rm -f helloworld
set -e
sudo docker run -d --rm --name helloworld -p 8888:8080 4admin2root/cloud-simple-helloworld:latest
