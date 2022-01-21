#where语句中经常使用的运算符
#查询姓名为赵云的学生成绩
SELECT *FROM student 
	WHERE `name`='赵云';
-- 查询英语成绩大于90分的同学
SELECT *FROM student
	WHERE english > 90;
-- 查询总分大于200分的所有同学
SELECT *FROM student
	WHERE (chinese+english+math) > 200;
-- 查询math大于60并且(and)id大于4的学生成绩
SELECT *FROM student
	WHERE (math > 60)AND (id >4);
-- 查询英语成绩大于语文成绩的同学
SELECT *FROM student
	WHERE english>chinese;
-- 查询总分大于200分并且数学成绩小于语文成绩,的姓赵的学生.
SELECT *FROM student
	WHERE (chinese+english+math) > 200 AND
		math<chinese AND `name`LIKE '赵%';
-- 赵%表示名字以赵开头的就可以
-- 查询英语分数在80－90之间的同学。
SELECT *FROM student
	WHERE english > 80 AND english < 90; #80 between and 90也可
-- 查询数学分数为89,90,91的同学。
SELECT *FROM student
	WHERE math = 89 OR math = 90 OR math = 91;
SELECT *FROM student
	WHERE math IN (89 ,90,91);
-- -查询所有姓李的学生成绩。
SELECT *FROM student
	WHERE `name` LIKE '李%';
-- 查询数学分>80，语文分>80的同学
SELECT *FROM student
	WHERE math >80 AND chinese >80;
-- 查询数学比语文多30分的学生
SELECT *FROM student
	WHERE math = chinese + 30；