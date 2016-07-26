#! /bin/bash
cd /var/sonar_home/bin/linux-x86-64 && ./sonar.sh start && tail -f ../../logs/sonar.log
