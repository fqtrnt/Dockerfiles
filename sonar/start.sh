#! /bin/bash
docker run -d -p 9000:9000 -p 9001:9001 -v E:/docker/sonar/sonarqube-5.6:/var/sonar_home -v e:/dev/jdk/linux/8:/usr/local/jdk sonar:1.0
