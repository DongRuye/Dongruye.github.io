#group by + having
CREATE TABLE dept( /*部门表*/
deptno MEDIUMINT   UNSIGNED  NOT NULL  DEFAULT 0,
dname VARCHAR(20)  NOT NULL  DEFAULT "",
loc VARCHAR(13) NOT NULL DEFAULT ""
) ;
DROP TABLE dept;
INSERT INTO dept VALUES(10,'Accounting','New York'),(20,'Research','DALLAS'),(30,'SALES','New York'),(40,'Operations','Boston')
SELECT *FROM dept;
#创建表EMP雇员
DROP TABLE emp;
CREATE TABLE emp(empno  MEDIUMINT UNSIGNED  NOT NULL  DEFAULT 0, /*编号*/
	ename VARCHAR(20) NOT NULL DEFAULT "", /*名字*/
	job VARCHAR(9) NOT NULL DEFAULT "",/*工作*/
	mgr MEDIUMINT UNSIGNED ,/*上级编号*/
	hiredate DATE NOT NULL,/*入职时间*/
	sal DECIMAL(7,2)  NOT NULL,/*薪水*/
	comm DECIMAL(7,2) ,/*红利*/
	deptno MEDIUMINT UNSIGNED NOT NULL DEFAULT 0 /*部门编号*/
) ;

INSERT INTO emp VALUES(7369,'SMITH','CLERK',7902,'1990-12-17',800.00,NULL,20),
		(7499,'ALLEN','SALESMAN',7698,'1991-2-20',1600.00,300.00,30),
		(7521,'WARD','SALESMAN',7698,'1991-2-22',1250.00,500.00,30),
		(7566,'JONES','MANAGER',7839,'1991-4-2',2975.00,NULL,20),
		(7654,'MARTIN','SALESMAN',7698,'1991-9-28',1250.00,1400.00,30),
		(7698,'BLAKE','MANAGER',7839,'1991-5-1',2850.00,NULL,30),
		(7782,'CLARK','MANAGER',7839,'1991-6-9',2450.00,NULL,10),
		(7788,'SCOTT','ANALYST',7566,'1997-4-19',3000.00,NULL,20),
		(7839,'KING','PRESIDENT',NULL,'1991-11-17',5000.00,NULL,10),
		(7844,'TURNER','SALESMAN',7698,'1991-9-8',1500.00,NULL,30),
		(7900,'JAMES','CLERK',7698,'1991-12-3',950.00,NULL,30),
		(7902,'FORD','ANALYST',7566,'1991-12-3',3000.00,NULL,20),
		(7934,'MILLER','CLERK',7782,'1992-1-23',1300.00,NULL,10);
	
SELECT *FROM emp;

CREATE TABLE salgrade
(
grade MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
losal DECIMAL(17,2)  NOT NULL,
hisal DECIMAL(17,2)  NOT NULL
);

#测试数据
INSERT INTO salgrade VALUES (1,700,1200);
INSERT INTO salgrade VALUES (2,1201,1400);
INSERT INTO salgrade VALUES (3,1401,2000);
INSERT INTO salgrade VALUES (4,2001,3000);
INSERT INTO salgrade VALUES (5,3001,9999);

SELECT *FROM salgrade;

#演示group by + having GROUPby用于对查询的结果分组统计,(示意图)
-- --having子句用于限制分组显示结果.
-- --?如何显示每个部门的平均工资和最高工资
-- --老韩分析:
SELECT AVG(sal),MAX(sal),deptno
	FROM emp GROUP BY deptno DESC;  #按照deptno降序
-- --按照部分来分组查询
-- --使用数学方法，对小数点进行处理
-- --?显示每个部门的每种岗位的平均工资和最低工资
#老师分析1.显示每个部门的平均工资和最低工资
    -- --2.显示每个部门的每种岗位的平均工资和最低工资
SELECT AVG(sal),MIN(sal),deptno,job
	FROM emp GROUP BY deptno,job DESC;  #按照deptno,job两个标准降序

-- --?显示平均工资低于2000的部门号和它的平均工资//别名
-- --老师分析[写sql语句的思路是化繁为简,各个击破]
-- --1.显示各个部门的平均工资和部门号
-- -2.在1的结果基础上，进行过滤，保留AVG(sal)<2000
-- --3.使用别名进行过滤

SELECT AVG(sal),deptno
	FROM emp GROUP BY deptno
#报错	where avg(sal) < 2000;
	HAVING AVG(sal)<2000;
-- --使用别名
SELECT AVG(sal) AS avg_sal,deptno
	FROM emp GROUP BY deptno DESC
	HAVING avg_sal<2000;


