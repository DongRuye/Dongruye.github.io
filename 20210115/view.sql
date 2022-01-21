-- 视图创建
CREATE VIEW emp_view1
	AS
	SELECT empno,ename,job,deptno FROM emp;
	
DESC emp_view1;
SELECT *FROM emp_view1;
SELECT ename FROM emp_view1;
SELECT *FROM emp;

-- 修改视图
ALTER VIEW emp_view1 AS SELECT ename FROM emp; -- 将视图显示修改掉

UPDATE emp_view1
	SET job = 'MANAGER'            -- 修改掉视图的数据，表数据也改变
	WHERE empno = 100002

-- 查看创建视图的指令
SHOW CREATE VIEW emp_view1;
-- 删除
DROP VIEW emp_view1;