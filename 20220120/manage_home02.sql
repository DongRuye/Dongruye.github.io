
-- 查询语句
SELECT *FROM dept;

SELECT *FROM emp;

-- 显示所有部门名称
SELECT dname
	FROM dept;
	
SELECT ename,(sal + IFNULL(comm,0))*13  AS '年收入'    -- 否则comm为空情况会为null
	FROM emp;
	
SELECT ename,sal
	FROM emp
	WHERE sal > 2850
	
SELECT ename,sal
	FROM emp
	WHERE sal NOT BETWEEN 1500 AND  2850
	
SELECT ename,deptno
	FROM emp
	WHERE empno = 7566
	
SELECT ename,sal
	FROM emp
	WHERE deptno = 10 OR deptno = 30
	
	
SELECT ename,job
	FROM emp
	WHERE mgr IS NULL;
	
SELECT  ename,job,hiredate
	FROM emp
	WHERE hiredate BETWEEN '1991-02-1' AND '1991-05-01'
	ORDER BY hiredate ASC
	
SELECT ename,sal,comm
	FROM emp
	WHERE comm IS NOT NULL
	ORDER BY sal DESC

