CREATE DATABASE redmine CHARACTER SET utf8;
CREATE USER 'redmine'@'%' IDENTIFIED BY 'redmine';
CREATE USER 'redmine'@'localhost' IDENTIFIED BY 'redmine';
grant all privileges on redmine.* to 'redmine'@'%' identified by 'redmine';
grant all privileges on redmine.* to 'redmine'@'localhost' identified by 'redmine';
flush privileges;
