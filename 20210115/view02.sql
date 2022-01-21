-- 三张表构建一个视图
SELECT empno,ename,dname,grade
	FROM emp,dept,salgrade
	WHERE emp.`deptno` = dept.`deptno` AND   -- 多表查询
	(sal BETWEEN losal AND hisal)
	
-- 结果构建成视图
CREATE VIEW emp_view03 
	AS 
	SELECT empno,ename,dname,grade
	FROM emp,dept,salgrade
	WHERE emp.`deptno` = dept.`deptno` AND 
	(sal BETWEEN losal AND hisal)
	
DESC emp_view03;
SELECT *FROM emp_view03;