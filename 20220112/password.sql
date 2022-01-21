-- USER()查询用户
-- 可以查看登录到mysql的有哪些用户，以及登录的用户@IP地址
SELECT USER() FROM DUAL;
-- DATABASE()查询当前使用数据库名称
SELECT DATABASE();
-- MD5(str)为字符串算出一个MD532的字符串，常用(用户密码)加密
-- root密码是hsp->加密md5->在数据库中存放的是加密后的密码
SELECT MD5('hsp') FROM DUAL;  #md5处理后都是32位

-- 演示用户表，存放密码时，是md5
CREATE TABLE hsp_user
	(id INT,`name`VARCHAR(32)NOT NULL DEFAULT'',
	pwd CHAR(32)NOT NULL DEFAULT'');
	
INSERT INTO hsp_user VALUES(100,'韩顺平',MD5('hsp'));

SELECT *FROM hsp_user;-- csdn
SELECT *FROM hsp_user -- SQL注入问题
	WHERE`name` = '韩顺平' AND pwd = MD5('hsp') -- 不md5（）,找不到
-- PASSWORD(str)
-- 加密函数,MySQL数据库的用户密码就是PASSWORD函数加密
SELECT PASSWORD('hsp') FROM DUAL;
-- 数据库的*81220D972A52D4C51BB1C37518A2613706220DAC
-- select*frommysql.user\G从原文密码str计算并返回密码字符串
-- 通常用于对mysql数据库的用户密码加密
-- mysql.user表示数据库.表
SELECT *FROM mysql.user  -- authentication_string 就是password加密后的'hsp'


