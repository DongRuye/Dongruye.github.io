-- 不带R字母员工
SELECT *
	FROM emp
	WHERE ename NOT LIKE '%R%'
	
-- 前三个字符
SELECT SUBSTRING(ename,1,3)
	FROM emp
	
	
-- a替换A
SELECT  REPLACE(ename,'A','a')
	FROM emp
	
SELECT *FROM emp
	WHERE DATE_ADD(hiredate,INTERVAL 10 YEAR) <= NOW()
	
SELECT ename,job,sal
	FROM emp
	ORDER BY job DESC,sal
	
SELECT ename,CONCAT(YEAR(hiredate),'-',MONTH(hiredate))
	FROM emp
	ORDER BY MONTH(hiredate),YEAR(hiredate)
	
SELECT ename,FLOOR(sal/30)
	FROM emp
	
SELECT *FROM emp
	WHERE MONTH(hiredate) = 2

SELECT ename,DATEDIFF(NOW() ,hiredate) AS '已工作天数'
	FROM emp
	
SELECT *FROM emp
	WHERE ename LIKE '%A%'  -- 模糊查询
	
-- 所有员工工作的年限
SELECT ename,FLOOR(DATEDIFF(NOW(),hiredate) / 365),
	FLOOR(DATEDIFF(NOW(),hiredate)/365/30)S
	FROM emp