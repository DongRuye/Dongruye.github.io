-- mysql用户管理
-- 根据不同用户创建不同的权限

-- 1.创建用户  hsp_edu 用户名 localhost 登陆的ip   1234556密码 password加密后的密码
CREATE USER 'hsp_edu'@'localhost' IDENTIFIED BY '123456'

SELECT *
	FROM mysql.`user`
-- *6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9
SELECT PASSWORD('123456')

SELECT `host`,`user`,authentication_string
	FROM mysql.`user`
	
-- 2.删除用户
DROP USER 'hsp_edu'@'localhost'
	
