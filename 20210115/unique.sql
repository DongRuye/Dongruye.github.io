CREATE TABLE t21
	(
	id INT UNIQUE NOT NULL,  -- id列不可以重复
	`name` VARCHAR(32),
	email VARCHAR(32)
	);
	
INSERT INTO t21
	VALUES(1,'jack','123@qq.com');
	
INSERT INTO t21
	VALUES(1,'jack','123@qq.com'); -- 报错
	
-- 细节
-- 1.如果没有指定not null,则unique字段可以有多个null
-- 如果一个列(字段)，是unique not null使用效果类似primary key(非空且不重复)
INSERT INTO t21
	VALUES(NULL,'jack','123@qq.com');  -- 可以执行多次
	
-- 2.一张表可以有多个unique字段
DROP TABLE t22;
CREATE TABLE t22
	(
	id INT UNIQUE,  -- unique可以多个
	`name` VARCHAR(32) UNIQUE,
	email VARCHAR(32)
	);