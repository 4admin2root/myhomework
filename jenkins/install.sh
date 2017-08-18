#!/usr/bin/bash
# install openjdk
sudo yum install java-1.8.0-openjdk -y
# install jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins -y
# start jenkins
sudo systemctl enable jenkins && sudo systemctl start jenkins
echo 'get password:'
cat /var/lib/jenkins/secrets/initialAdminPassword
