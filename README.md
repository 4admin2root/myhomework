[![Build Status](https://travis-ci.org/4admin2root/myhomework.svg?branch=master)](https://travis-ci.org/4admin2root/myhomework)
# myhomework
## environment
OS: centos 7
container: docker 17 (normal user can run command with sudo, for example: jenkins)
scm: git and github

## for developers
just run bash script : bash dev_test.sh
somethings to know:
* base on docker-compose
* sleep 60 for springboot ready, maybe not enough
* source codes arein dir 'src'

## CI (jenkins,travis)
### jenkins
1. create a job in jenkins
  pipeline script from scm: https://github.com/4admin2root/myhomework
  file name is : Jenkinsfile  
2. build the job

somethings to know:
* you can get jenkins install method in dir 'jenkins'
* sleep 60 for springboot ready, maybe not enough

### travis
1. https://travis-ci.org/4admin2root/myhomework
2. push docker image to dockerhut at last

## CD (dir: 'ansible')

## others

