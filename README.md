[![Build Status](https://travis-ci.org/4admin2root/myhomework.svg?branch=master)](https://travis-ci.org/4admin2root/myhomework)
[![Quality Gate](https://sonarcloud.io/api/badges/gate?key=spring:.boot:cloud-simple-helloworld)](https://sonarcloud.io/dashboard/index/spring.boot:cloud-simple-helloworld)
# myhomework
## environment
OS: centos 7  
container: docker 17 (normal user can run command with sudo, for example: jenkins)  
scm: git and github

## for developers
just run bash script : 
```
git clone https://github.com/4admin2root/myhomework/
cd myhomework
bash dev_test.sh
```

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
1. please browse https://travis-ci.org/4admin2root/myhomework

somethings to know:
* push docker image to dockerhut at last

## CD (dir: 'ansible')
1. cd ansible
2. run 
for test
```
ansible-playbook -i hosts -b app_test.yml
```
for prod
```
ansible-playbook -i hosts -b app_prod.yml
```
You can find more informations in file ansible/README.md  
somethings to know:
1. use jar instead of war , because of springboot

## others
 go to dir 'others'
