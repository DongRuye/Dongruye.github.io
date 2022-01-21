-- 演示mysql事务隔离级别
-- 开两个控制台
-- 查看当前mysql控制级别
SELECT @@tx_isolation;
-- 系统当前隔离级别
SELECT @@global.tx_isolation;
/*
+-----------------+
| @@tx_isolation  |
+-----------------+
| REPEATABLE-READ |
+-----------------+
1 row in set, 1 warning (0.00 sec)
可重复度

*/
-- 3.一个设置成读未提交
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
/*
mysql> SELECT @@tx_isolation;
+-----------------+
| @@tx_isolation  |
+-----------------+
| REPEATABLE-READ |
+-----------------+
1 row in set, 1 warning (0.00 sec)
*/
-- 4.创建表
CREATE TABLE account(
	id INT,
	`name` VARCHAR(32),
	money INT
);
