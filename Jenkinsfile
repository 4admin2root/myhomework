// todo
node {
   stage('git') {
	git 'https://github.com/4admin2root/myhomework'
    }
    stage('mvn') {
	sh 'bash maven_build.sh'
    }
    stage('docker') {
	sh 'bash docker_build.sh'
    }
    stage('test') {
	sh 'curl --connect-timeout 20 --retry 5 --retry-delay 5 http://localhost:8888/'
    }
    stage('clean') {
	sh 'sudo docker rm -f helloworld'
    }
}
