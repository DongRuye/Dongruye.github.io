#合计，统计函数
-- 演示mysql的统计函数的使用

-- 统计一个班级共有多少学生？
SELECT COUNT(*) FROM student;
-- 统计总分大于250的人数有多少？
SELECT COUNT(*) FROM student
	WHERE (chinese+math+english) > 250;
-- count(*)和count(列)的区别
/*
--解释:count(*)返回满足条件的记录的行数
--count(列):统计满足条件的某列有多少个，但是会排除为null的情况
*/
CREATE TABLE t15(
	`name` VARCHAR(20)
);
INSERT INTO t15 VALUES('Tom');
INSERT INTO t15 VALUES('Jack');
INSERT INTO t15 VALUES('Jerry');
INSERT INTO t15 VALUES(NULL);

SELECT *FROM t15;
SELECT COUNT(*) FROM t15;
SELECT COUNT(`name`) AS count1 FROM t15;#还改了个名字

 
-- 演示sum函数的使用

-- 统计一个班级数学总成绩
SELECT SUM(math) FROM student;
-- 统计一个班级语文、英语、数学各科的总成绩
SELECT SUM(math),SUM(english),SUM(chinese) FROM student;
-- 统计一个班级语文、英语、数学的成绩总和
SELECT SUM(math+english+chinese) FROM student;
-- 统计一个班级语文成绩平均分
SELECT SUM(chinese)/COUNT(*) FROM student;

-- avg函数
SELECT AVG(math) FROM student;
-- max与min函数
SELECT MAX(math),MIN(chinese) FROM student;#对应名字要用到子查询