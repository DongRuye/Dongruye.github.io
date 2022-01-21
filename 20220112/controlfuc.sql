#流程控制函数
SELECT IF(TRUE,'北京','上海');

SELECT IFNULL(NULL,'韩顺平教育');

SELECT CASE 
	WHEN TRUE  THEN 'Jack'
	WHEN FALSE THEN 'Tom'
	ELSE 'Mary' END;
	
-- 1.查询emp表,如果comm是null,则显示0.0
SELECT ename,IF(comm IS NULL,0.0,comm) FROM emp;
SELECT ename,IFNULL(comm,0.0) FROM emp;
-- 老师说明，判断是否为null要使用is null,判断不为空使用 is not,判断空不能用=
-- 2.如果emp表的job是CLERK则显示职员，如果是MANAGER则显示经
-- 如果是SALESMAN则显示销售人员，其它正常显示
SELECT ename,(SELECT CASE
		WHEN job = 'CLERK' THEN '职员'
		WHEN job = 'MANAGER' THEN '经理'
		WHEN job = 'SALESMAN' THEN '销售人员'
		ELSE job END)AS 'job'
	FROM emp;