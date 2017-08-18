# build sprintboot
FROM 4admin2root/jdk:8
MAINTAINER Jason <piml.lui@gmail.com>
# ENV JAVA_HOME
ADD ./target/cloud-simple-helloworld-0.0.1.jar /opt/myhomework/
WORKDIR /opt/myhomework
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "cloud-simple-helloworld-0.0.1.jar"]
