#! /bin/bash
docker rm mysql
docker run -p 4306:3306 --name mysql -v /media/e/docker/newWorkspace/mysql/mysqld.cnf:/etc/mysql/mysql.conf.d/mysqld.cnf -v $PWD/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=admin -d mysql:5.7
