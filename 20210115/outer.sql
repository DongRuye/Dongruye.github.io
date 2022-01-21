-- 外连接

-- 比如：列出部门名称和这些部门的员工名称和工作，
-- 同时要求显示出那些没有员工的部门。
-- 使用我们学习过的多表查询的SQL，看看效果如何?

SELECT dname,ename,job
	FROM emp,dept
	WHERE emp.deptno = dept.`deptno`
	ORDER BY dname
	
-- 只能关联条件，匹配不上不会显示  没有40号部门
-- 如何显示40好部门？

CREATE TABLE stu(
	id INT,
	`name` VARCHAR(32)
);
SELECT *FROM stu
DROP TABLE stu;

INSERT INTO stu VALUES(1,'SMITH'),(2,'TOM'),(3,'JERRY'),(4,'KITY'),(5,'NONO')

CREATE TABLE exam(
	id INT,
	grade DOUBLE
);
INSERT INTO exam VALUES(1,100),(2,92),(3,85)
SELECT *FROM exam

-- 1.左外连接
SELECT `name`,stu.`id`,grade
	FROM stu,exam
	WHERE stu.`id` = exam.`id`
	
SELECT `name`,stu.`id`,grade
	FROM stu LEFT JOIN exam
	ON stu.`id` = exam.`id`
-- 2.右外连接
SELECT `name`,stu.`id`,grade
	FROM stu RIGHT JOIN exam
	ON stu.`id` = exam.`id`

-- 练习1   大多数用的是内连接（多表查询）
SELECT dname,ename,job
	FROM dept LEFT JOIN emp
	ON dept.`deptno` = emp.`deptno`
	