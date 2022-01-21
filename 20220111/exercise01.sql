#创建表的课堂练习 
-- 字段属性 
-- Id 整形 
-- name 字符型 
-- sex 字符型 
-- brithday 日期型（date） 
-- entry_date 日期型 (date) 
-- job 字符型 
-- Salary 小数型 
-- resume 文本型 
-- 自己一定要练习一把
DROP TABLE t15;
CREATE TABLE t15(
	id INT,
	`name` VARCHAR(32),
	sex CHAR,
	birthday DATE,
	entry_date DATETIME,
	job VARCHAR(32),
	salary DOUBLE,
	`resume` TEXT
)CHARSET utf8 COLLATE utf8_bin ENGINE INNODB;
SELECT *FROM t15;
INSERT INTO t15 VALUES(1,'成风','男','1980-12-10','1980-12-10 10:10:10','厨师',25000,'我来自新东方');