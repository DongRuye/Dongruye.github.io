#修改表的操作练习 
-- 员工表 emp 的上增加一个 image 列，varchar 类型(要求在 resume 后面)。 

-- 显示表结构，可以查看表的所有列 -- 修改 job 列，使其长度为 60。 

-- 删除 sex 列。 ALTER TABLE emp DROP sex -- 表名改为 employee。 

-- 修改表的字符集为 utf8 

 -- 列名 name 修改为 user_name 
 
SELECT *FROM t15;
DROP  TABLE t15;
#添加列
ALTER TABLE t15
	ADD image VARCHAR(32) NOT NULL DEFAULT ''
	AFTER RESUME
DESC t15  -- 显示表结构，可以查看表的所有列  



#修改列
ALTER TABLE t15
	MODIFY job VARCHAR(60) NOT NULL DEFAULT ''

#删除列
ALTER TABLE t15
	DROP sex;
#修改表名
RENAME TABLE t15 TO employee
 DESC employee  -- 显示表结构，可以查看表的所有列
 
 ALTER TABLE employee CHARACTER SET utf8
 
 ALTER TABLE employee CHANGE `name` `user_name` VARCHAR(64) NOT NULL DEFAULT ''  #user_name为规范化
 
 INSERT INTO employee(id,user_name,birthday)
	VALUES(12,'我是谁','1990-12-01')
SELECT *FROM employee;