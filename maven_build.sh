#!/usr/bin/bash
#git clone https://github.com/4admin2root/myhomework
cd myhomework/
# build
sudo docker run  -d -v $PWD:/opt/myhomework -v $PWD/.m2:/root/.m2 -w /opt/myhomework 4admin2root/maven:3.5 mvn install
