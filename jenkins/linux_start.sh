#! /bin/bash
#docker run -it -p 8090:8080 -p 50000:50000 -v /media/e/dev/jdk/linux/8:/usr/local/jdk -v /media/e/docker/jenkins/workspace:/var/jenkins_home -v /media/e/dev/gradle:/var/gradle_home -v /media/e/dev/mvn:/var/maven_home -v /media/e/.gradle/:/var/.gradle -v /media/e/.m2/:/var/jenkins_home/.m2 jenkins:1.0 bash
docker run -d -p 8090:8080 -p 50000:50000 \
  -v /media/e/dev/jdk/linux/8:/usr/local/jdk \
  -v /media/e/docker/jenkins/workspace:/var/jenkins_home \
  -v /media/e/dev/gradle:/var/gradle_home \
  -v /media/e/dev/mvn:/var/maven_home \
  -v /media/e/.gradle/:/var/.gradle \
  -v /media/e/.m2/:/var/jenkins_home/.m2 \
  jenkins:1.0
