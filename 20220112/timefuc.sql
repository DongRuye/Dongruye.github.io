-- 时间日期函数

SELECT CURRENT_DATE();   #当前日期

SELECT CURRENT_TIME();   #当前时间

SELECT CURRENT_TIMESTAMP() FROM DUAL;   #当前时间戳

CREATE TABLE mes(
	id INT,
	content VARCHAR(20),
	send_time DATETIME       
)CHARACTER SET utf8 COLLATE utf8_bin ENGINE INNODB;                              #复习完整格式

SELECT *FROM mes;

INSERT INTO mes
	VALUES(1,'北京新闻',CURRENT_TIMESTAMP());  #由于table内为DATETIME，这里为current_time，还是会输出时分秒
	
INSERT INTO mes
	VALUES(2,'上海新闻',NOW());
INSERT INTO mes
	VALUES(2,'广东新闻','2020-12-12');
	
-- 显示所有新闻信息，不显示时间
SELECT id, content, DATE(send_time)
	FROM mes;
-- 查询100分钟内的发布新闻
SELECT *
	FROM mes
	WHERE DATE_ADD(send_time,INTERVAL 100 MINUTE) >= NOW();
	
	
SELECT DATE_ADD(send_time,INTERVAL 10 DAY) FROM mes;  #当前日期直接加10天，但连点只会加一次（与insert into连加不同）
-- 年月日时分秒都可以
-- 求出2011-11-11与1990-1-1相差多少天
SELECT DATEDIFF('2011-11-11','1990-1-1') FROM DUAL;

-- 求出活了多少天[练习]
SELECT DATEDIFF(NOW(),'1998-11-06') FROM DUAL;   #日期的差值（绝对值）
-- 活到95岁，活了多少天[练习]
SELECT DATEDIFF(DATE_ADD('1998-11-06',INTERVAL 95 YEAR),'1998-11-06') FROM DUAL;
-- 活到95岁，还能活多少天[练习]
SELECT DATEDIFF(DATE_ADD('1998-11-06',INTERVAL 95 YEAR),NOW()) FROM DUAL;  

SELECT TIMEDIFF('11:11:11','01:23:12');

SELECT YEAR(NOW()) FROM DUAL;

SELECT UNIX_TIMESTAMP();

SELECT FROM_UNIXTIME(20000,'%Y-%m-%d %H:%m:%s') FROM DUAL;-- 可以存放一个整数，表示时间，通过其转换