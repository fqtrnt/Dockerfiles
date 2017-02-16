create database if not exists sonar character set utf8;
CREATE USER 'sonar'@'%' IDENTIFIED BY 'sonar';
CREATE USER 'sonar'@'localhost' IDENTIFIED BY 'sonar';
grant all privileges on sonar.* to 'sonar'@'%' identified by 'sonar';
grant all privileges on sonar.* to 'sonar'@'localhost' identified by 'sonar';
flush privileges;

