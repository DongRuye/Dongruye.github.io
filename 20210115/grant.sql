-- 创建用户
CREATE USER 'ruye'@'localhost' IDENTIFIED BY'123'

-- 使用root用户创建testdb
CREATE DATABASE testdb
CREATE TABLE news
	(
	id INT,
	content VARCHAR(32)
	);
	
INSERT INTO news VALUES(100,'北京新闻')

SELECT *FROM news;

-- 给ruye分配查看news表和添加news的权限
GRANT SELECT ,INSERT
	ON testdb.`news`
	TO 'ruye'@'localhost'
	
-- 增加权限
GRANT UPDATE
	ON testdb.`news`
	TO 'ruye'@'localhost'
	
-- 修改ruye密码
SET PASSWORD FOR 'ruye'@'localhost' = PASSWORD('123456');

-- 回收ruye全部权限
REVOKE SELECT,UPDATE,INSERT ON testdb.`news` FROM 'ruye'@'localhost';
-- 等价
REVOKE ALL ON testdb.`news` FROM 'ruye'@'localhost';

-- 删除ruye
DROP USER 'ruye'@'localhost';