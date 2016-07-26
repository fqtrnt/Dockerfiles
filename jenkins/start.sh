#! /bin/bash
docker run -d -p 8090:8080 -p 50000:50000 -v E:/dev/jdk/linux/8:/usr/local/jdk -v E:/docker/jenkins/workspace:/var/jenkins_home jenkins:1.0
