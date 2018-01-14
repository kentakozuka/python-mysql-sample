###Read as bellow
###source ceate_tables.sql

#database
###この辺動作確認していないので、試す必要あり
DROP DATABASE IF EXISTS `test`;
DELETE FROM mysql.user WHERE user='test';
FLUSH PRIVILEGES;
CREATE DATABASE `test` DEFAULT CHARACTER SET utf8 ;
GRANT ALL ON `test`.* to 'test'@mysql identified by 'test';
FLUSH PRIVILEGES;


###ここから下は動作確認済
### USER
DROP TABLE IF EXISTS USER;
CREATE TABLE USER (
		ID				INT AUTO_INCREMENT
	,	NAME	    VARCHAR(20)
	,	SEX			VARCHAR(5)
	,	CREATED_DATETIME timestamp not null default current_timestamp
	,	UPDATED_DATETIME timestamp not null default current_timestamp on update current_timestamp
	,	PRIMARY KEY (ID)
	,	INDEX(ID)
) character set utf8mb4;
