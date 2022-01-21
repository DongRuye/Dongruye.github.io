CREATE TABLE t17
	(
	id INT PRIMARY KEY,  -- 主键
	`name` VARCHAR(32),
	email VARCHAR(32)
	);
	
INSERT INTO t17
	VALUES(1,'jack','123@163.com')

INSERT INTO t17
	VALUES(2,'jack','123@163.com')
	
INSERT INTO t17
	VALUES(1,'jack','123@163.com')  -- 报错

-- 主键使用的细节讨论
-- primarykey不能重复而且不能为null。
INSERT INTO t17 VALUES(NULL,'hsp','hsp@sohu.com');
-- 一张表最多只能有一个主键,但可以是复合主键(比如id+name)
CREATE TABLE t18(
	 id INT PRIMARY KEY,-- 表示id列是主键  1.第一种主键方式
	`name` VARCHAR(32),PRIMARY KEY-- 错误的
	 email VARCHAR(32));-- 演示复合主键(id和name做成复合主键)
CREATE TABLE t18(
	id INT,
	`name`VARCHAR(32),
	email VARCHAR(32),
	PRIMARY KEY(id,`name`) -- 复合主键,insert into ,id和name相同才报错
	);     -- 2.第二种主键  primary key(`name`)               

DESC t18   -- 可以显示约束
	
