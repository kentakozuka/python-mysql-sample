###source ceate_tables.sql

FLUSH PRIVILEGES;

# create database
DROP DATABASE IF EXISTS `test`;
CREATE DATABASE `test` DEFAULT CHARACTER SET utf8;

# create user
DROP USER IF EXISTS test;
CREATE USER 'test' IDENTIFIED BY 'test';

# grant permmission
GRANT ALL ON `test`.* to 'test'@'%' identified by 'test';

FLUSH PRIVILEGES;

# use test
USE `test`;

### user
DROP TABLE IF EXISTS user;
CREATE TABLE user (
		ID				INT AUTO_INCREMENT
	,	NAME	    VARCHAR(20)
	,	SEX			VARCHAR(5)
	,	CREATED_DATETIME timestamp not null default current_timestamp
	,	UPDATED_DATETIME timestamp not null default current_timestamp on update current_timestamp
	,	PRIMARY KEY (ID)
	,	INDEX(ID)
) character set utf8mb4;
