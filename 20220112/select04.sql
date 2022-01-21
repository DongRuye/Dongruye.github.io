-- -演示orderby使用--对数学成绩排序后输出【升序】。
 SELECT *FROM student
	ORDER BY math;
-- --对总分按从高到低的顺序输出[降序]
SELECT `name`,(Chinese+math+english) AS total_score FROM student
	ORDER BY total_score DESC;-- -使用别名排序
	
-- --对姓韩的学生成绩[math]排序输出(降序)
SELECT *FROM student
	WHERE `name` LIKE '韩%'
	ORDER BY english DESC;