SELECT *
	FROM emp
	WHERE deptno = 30
	
SELECT ename,empno,deptno
	FROM emp
	WHERE job = 'CLERK'
	
SELECT *
	FROM emp
	WHERE IFNULL(comm,0) > sal
	
	
SELECT *
	FROM emp
	WHERE comm > sal*0.6
	
SELECT *
	FROM emp
	WHERE (deptno = 10 AND job = 'MANAGER') OR (deptno = 20 AND job = 'CLERK')
	
SELECT *
	FROM emp
	WHERE (deptno = 10 AND job = 'MANAGER') 
	OR (deptno = 20 AND job = 'CLERK')
	OR (!(job = 'MANAGER' OR job = 'CLERK') AND sal >= 2000)
	
SELECT DISTINCT job   -- 不重复
	FROM emp
	WHERE comm IS NOT NULL
	
SELECT *
	FROM emp
	WHERE comm IS NULL OR IFNULL(comm,0) < 100
	
-- 找出每个月倒数第三天雇佣的员工
SELECT LAST_DAY(NOW()) -- 函数

SELECT *
	FROM emp
	WHERE LAST_DAY(hiredate)-2 = hiredate
	
-- 早于12年前雇佣员工
SELECT *
	FROM emp
	WHERE DATE_ADD(hiredate,INTERVAL 12 YEAR) < NOW()
	
-- 小写字母显示所有员工
 SELECT CONCAT(LCASE(SUBSTRING(ename,1,1)),SUBSTRING(ename,2))
	FROM emp;

-- 5个字符的员工名字
SELECT *
	FROM emp
	WHERE LENGTH(ename) = 5
