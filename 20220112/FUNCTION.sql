SELECT CHARSET(ename) FROM emp;

SELECT CONCAT(ename,'job is ',job)FROM emp;  #多个列拼接

SELECT INSTR('Hanshunping','ping') FROM DUAL; -- 亚元表，作为测试

SELECT UCASE(ename) FROM emp;

SELECT LCASE(ename) FROM emp;

SELECT LEFT(ename,2) FROM emp;
SELECT RIGHT(ename,2) FROM emp;

SELECT LENGTH(ename) FROM emp; #9,表示返回字节的长度

SELECT ename,REPLACE(job,'MANAGER','经理') FROM emp;

SELECT STRCMP('hsp','Hsp') FROM emp;  #由于不区分大小写，返回0,   比较两个字符串大小

SELECT SUBSTRING(ename,1,2) FROM emp;  #从1开始，取得2个字符
SELECT SUBSTRING('韩顺平',1,2) FROM DUAL;  #从1开始，取得2个字符,验证为字符

SELECT LTRIM('    韩顺平教育     ') FROM DUAL;
SELECT RTRIM('    韩顺平教育     ') FROM DUAL;
SELECT TRIM('     韩顺平教育     ') FROM DUAL;