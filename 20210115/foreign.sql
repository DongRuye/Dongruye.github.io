-- 外键
-- 主表
CREATE TABLE my_class(
		id INT PRIMARY KEY,
		`name` VARCHAR(32) NOT NULL DEFAULT ''
		);
		
-- 从表
CREATE TABLE my_stu(
	id INT PRIMARY KEY,
	`name` VARCHAR (32) NOT NULL DEFAULT '',
	class_id INT,
	FOREIGN KEY(class_id) REFERENCES my_class(id)
	);
	
INSERT INTO my_class
	VALUES(100,'java');
	
INSERT INTO my_class
	VALUES(200,'web');
INSERT INTO my_class
	VALUES(300,'Hi');

SELECT *FROM my_class;     
DROP TABLE my_stu;
INSERT INTO my_stu
	VALUES(1,'tom',100),(2,'jack',200),(3,'mary',300) -- 300号班级还未存在，会报错
SELECT *FROM my_stu;