
-- 部门人数大于一信息
SELECT COUNT(*) AS c,deptno
	FROM emp
	GROUP BY deptno
	HAVING c > 1
-- 子查询:比smith薪资高得人的信息	
SELECT *
	FROM emp
	WHERE sal >(
		SELECT sal
			FROM emp
			WHERE ename = 'SMITH'
	)

-- 受雇日期比上级晚的所有员工
-- 1.自连接 emp当做两张表  worker,leader
SELECT *
	FROM emp worker,emp leader
	WHERE worker.hiredate > leader.hiredate 
	AND worker.mgr = leader.empno;
	
-- 列出部门名称与员工信息，同时列出没有员工的部门（左外连接，左边表都列出来）
-- 外连接
SELECT ename,emp.*
	FROM dept LEFT JOIN emp ON dept.`deptno` = emp.`deptno`

SELECT ename,dname
	FROM emp,dept
	WHERE job = 'MANAGER' AND emp.`deptno` = dept.deptno
	
SELECT MIN(sal) AS min_sal,job
	FROM emp
	GROUP BY job
	HAVING min_sal > 1500

SELECT *
	FROM emp
	WHERE sal > (
		SELECT AVG(sal)
		FROM emp
	)
	
	
SELECT *
	FROM emp
	WHERE sal > (
		SELECT MAX(sal)
			FROM emp
			WHERE deptno = 30
		)
	
SELECT COUNT(*),deptno,AVG(sal) AS '部门平均工资',FORMAT(AVG(DATEDIFF(NOW(),hiredate)),2) AS '平均工作天数'
	FROM emp
	GROUP BY deptno
	
-- 列出所有部门的详细信息与部门人数   临时表,联合查询
SELECT dept.*,tmp1.c
	FROM dept,(
		SELECT COUNT(*) AS c,deptno
		FROM emp
		GROUP BY deptno	
	)tmp1
	WHERE tmp1.deptno = dept.`deptno`
	
SELECT MIN(sal),job
	FROM emp
	WHERE job = 'MANAGER'
	
SELECT ename,(sal + IFNULL(comm,0))*12 AS year_sal
	FROM emp
	ORDER BY year_sal

