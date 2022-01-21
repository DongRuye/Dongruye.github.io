-- 事务的具体操作
-- 创建表
CREATE TABLE t27
	(id INT,
	`name` VARCHAR(32)
		
	);
DROP TABLE t27;	
-- 开始事务
START TRANSACTION
-- 设置保存点
SAVEPOINT a
-- 执行dml操作
INSERT INTO t27 VALUES(100,'tom');


SELECT *FROM t27;

SAVEPOINT b
INSERT INTO t27 VALUES(200,'jack');

-- 回滚
ROLLBACK TO b

ROLLBACK TO a


ROLLBACK   -- 回滚到事务开始状态
COMMIT 