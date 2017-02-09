#! /bin/bash
docker rm redmine
docker run -p3000:3000 -e REDMINE_DB_MYSQL=192.168.1.136 -e MYSQL_ENV_MYSQL_USER=redmine -e MYSQL_ENV_MYSQL_PASSWORD=redmine -e MYSQL_ENV_MYSQL_DATABASE=redmine -d -v /home/server/docker/redmine/files/:/usr/src/redmine/files --name redmine redmine:3.3

