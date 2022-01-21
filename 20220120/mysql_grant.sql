-- 默认情况下只能看到默认系统数据库
SELECT *FROM news;  -- 没有授权，看不到数据库下的表

UPDATE news SET content = '成都早报'
	WHERE id = 100
-- 指令被拒绝，无权限
-- UPDATE command denied to user 'ruye'@'localhost' for table 'news'
