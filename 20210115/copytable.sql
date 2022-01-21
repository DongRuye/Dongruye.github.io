-- 表的复制
CREATE TABLE my_tab01
	(
		id INT,
		`name` VARCHAR(32),
		sal DOUBLE,
		job VARCHAR(32),
		deptno INT
	);
DESC my_tab01;   -- 输出表列及其所有信息

-- 自我复制 
-- 1.emp迁移到表my_tab01
INSERT INTO my_tab01
	(id,`name`,sal,job,deptno)
	SELECT empno,ename,sal,job,deptno FROM emp;
SELECT *FROM my_tab01;

-- 2.自我复制
INSERT INTO my_tab01
	SELECT *FROM my_tab01;  -- 不断重复加入表的后面
	
-- 3.删除重复的表
CREATE TABLE my_tab02 LIKE emp;  -- 复制结构到新表
SELECT *FROM my_tab02;

INSERT INTO my_tab02
	SELECT *FROM emp;
	
SELECT * FROM my_tab02;
-- 考虑去除重复的
/*
1.创建临时表，与tab02结构一样
2.把记录通过distinct 关键字处理后把记录复制到my_tmp;
3.清除my_tab02记录
4.my_tmp记录复制到tab02
5.drop掉临时表my_tmp
*/
CREATE TABLE my_tmp LIKE my_tab02

INSERT INTO my_tmp
	SELECT DISTINCT *FROM my_tab02;
DELETE FROM my_tab02;  -- 清除记录，不是删除表

INSERT INTO my_tab02
	SELECT *FROM my_tmp
	
DROP TABLE my_tmp;

SELECT *FROM my_tab02;


