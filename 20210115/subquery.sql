-- 平均工资
SELECT deptno,AVG(sal)
	FROM emp
	GROUP BY deptno
	
-- 2.上面当做子查询
SELECT ename,sal,temp.avg_sal,emp.deptno
	FROM emp,(
		SELECT deptno,AVG(sal) AS avg_sal
		FROM emp
		GROUP BY deptno
	) temp 
	WHERE emp.`deptno` = temp.deptno AND emp.`sal` > temp.avg_sal


-- 3.查找每个部分工资最高人信息
SELECT ename,sal,emp.`deptno`
	FROM emp,(
		SELECT MAX(sal) AS max_sal
		FROM emp
		GROUP BY deptno

	) temp
	WHERE emp.`sal` = max_sal
	
-- 4.查询每个部门信息
SELECT *FROM dept;
SELECT *FROM emp;

SELECT dname,dept.`deptno`,loc,temp.per_num
	FROM dept,(
		SELECT COUNT(*) AS per_num,deptno
			FROM emp
			GROUP BY deptno
	) temp
	WHERE temp.deptno = dept.`deptno`


	