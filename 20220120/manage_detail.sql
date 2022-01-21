-- 用户管理的细节
-- 说明用户管理的细节
-- 在创建用户的时候，如果不指定Host,则为%,%表示表示所有IP都有连接权限
-- create user xxx;
CREATE USER jack
SELECT `host`,`user` FROM mysql.`user`
-- 你也可以这样指定
-- create user 'xxx'@'192.168.1.%'表示xxx用户在192.168.1.*(范围内，最后一位0-255)的ip可以登录mysql
CREATE USER 'smith'@'192.168.1.%'

DROP USER jack  -- drop user 'jack'@'%'
DROP USER 'smith'@'192.168.1.%' -- 完整格式