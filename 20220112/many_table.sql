-- 多表查询
-- ?显示雇员名,雇员工资及所在部门的名字【笛卡尔集】
/*老韩分析
1.雇员名,雇员工资来自emp表
2.部门的名字来自dept表
3.需求对emp和dept查询ename,sal,dname,deptno4.当我
们需要指定显示某个表的列是，需要表.列表*/
SELECT *
	FROM emp,dept
	WHERE emp.`deptno` = dept.`deptno`;
-- 老韩小技巧：多表查询的条件不能少于表的个数-1,否则会出现笛卡尔集
-- ?如何显示部门号为10的部门名、员工名和工资
SELECT dname,ename,sal
	FROM emp,dept
	WHERE dept.`deptno` AND emp.`deptno`=10;
	
-- ?显示各个员工的姓名，工资，及其工资的级别
-- 思路姓名，工资来自emp13
-- 工资级别salgrade5
-- 写sql,先写一个简单，然后加入过滤条件...
SELECT ename,sal,grade
	FROM emp,salgrade
	WHERE emp.`sal` BETWEEN losal AND hisal
	GROUP BY sal;  -- sal没有重复，可以不写emp.