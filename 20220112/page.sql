-- 分页查询
-- 按雇员的id号升序取出，每页显示3条记录，请分别显示第1页，第2页，第3页

-- 第1页
SELECT *FROM emp
	ORDER BY empno
	LIMIT 0,3;  -- 返回前三行
-- 第2页
SELECT *FROM emp
	ORDER BY empno
	LIMIT 3,3;  -- 返回前三行
-- 第3页
SELECT *FROM emp
	ORDER BY empno 
	LIMIT 6,3;  -- 返回前三行
-- 推导公式
/*select *from emp
	ORDER BY empno
	LIMIT 每页显示记录数*(第几页-1), 每页显示记录数*/