-- 创建索引
CREATE TABLE t25(
	id INT,
	`name` VARCHAR(32)
	
);
-- 查询是否有索引
SHOW INDEX FROM t25;
SHOW INDEX FROM t26;
-- 添加索引(先创建表再变成唯一索引)
CREATE UNIQUE INDEX id_index ON t25(id);
ALTER TABLE t26 ADD PRIMARY KEY (id); 

-- 添加普通索引
CREATE INDEX name_index ON t25(`name`);

ALTER TABLE t25 ADD INDEX name_index(`name`);  -- 普通2


CREATE TABLE t26(
	id INT,
	`name` VARCHAR(32)
	
);
-- 删除索引
DROP INDEX id_index ON t25;
-- 删除主键索引
ALTER TABLE t26 DROP PRIMARY KEY  -- 表就一个主键，不需要指定

-- 修改索引  删除+添加

-- 查询索引
SHOW INDEX FROM t25;
SHOW KEYS FROM t25;
SHOW INDEXES FROM t25;
