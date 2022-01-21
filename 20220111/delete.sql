-- 删除表中名称为’老妖怪’的记录。 
DELETE FROM employee
	WHERE user_name = '老妖怪'
SELECT *FROM employee;
-- 删除表中所有记录, 老师提醒，一定要小心 
DELETE FROM employee;
-- Delete 语句不能删除某一列的值（可使用 update 设为 null 或者 ''） 
#但是前面的ALTER drop可以删列
ALTER TABLE employee
	DROP image
-- 要删除这个表 DROP TABLE employee