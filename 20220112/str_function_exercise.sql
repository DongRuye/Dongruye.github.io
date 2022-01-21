-- 以首字母小写的方式显示所有员工emp表的姓名
SELECT CONCAT(LCASE(SUBSTRING(ename,1,1)),SUBSTRING(ename,2)) 
	FROM emp;  #从2往后全部取
