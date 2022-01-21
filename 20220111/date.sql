#演示时间相关的类型 
#创建一张表, date , datetime , timestamp
CREATE TABLE t14(
	birthday DATE,
	job_time DATETIME,
	login_time TIMESTAMP
	  NOT NULL DEFAULT CURRENT_TIMESTAMP
	  ON UPDATE CURRENT_TIMESTAMP
);-- 登录时间, 如果希望 login_time 列自动更新, 需要配置
SELECT *FROM t14;
INSERT INTO t14(birthday,job_time)
	VALUES('1998-11-06','2024-09-01 10:10:10');

-- 如果我们更新 t14 表的某条记录，login_time 列会自动的以当前时间进行更新