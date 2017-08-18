# build sprintboot
FROM 4admin2root/jdk:8
MAINTAINER Jason <piml.lui@gmail.com>
# ENV JAVA_HOME
ADD ./target /opt/myhomework
WORKDIR /opt/myhomework
EXPOSE 8080
ENTRYPOINT ["$JAVA_HOME/bin/java", "-jar", "cloud-simple-helloworld-0.0.1.jar"]

