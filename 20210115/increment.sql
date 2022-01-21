CREATE TABLE t24
	(id INT PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(32) NOT NULL DEFAULT '',
	`name` VARCHAR(32) NOT NULL DEFAULT '');
DESC t24;

-- 自增长
INSERT INTO t24
	VALUES(NULL,'jack@qq.com','jack');
INSERT INTO t24
	VALUES(NULL,'tom@qq.com','tom');
	
SELECT *FROM t24;

-- 另外的自增长形式

INSERT INTO t24
	(email,`name`) VALUES('hsp@qq.com','hsp');
	
-- 一般和主键primary key配合使用

-- 修改默认自增长开始值

CREATE TABLE t25
	(id INT PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(32) NOT NULL DEFAULT '',
	`name` VARCHAR(32) NOT NULL DEFAULT '');
ALTER TABLE t25 AUTO_INCREMENT = 100
INSERT INTO t25
	(email,`name`) VALUES('hsp@qq.com','hsp');
	
SELECT *FROM t25;