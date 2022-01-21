-- 增强groupby的使用
-- (1)显示每种岗位的雇员总数、平均工资。
SELECT COUNT(*),AVG(sal),job
	FROM emp
	GROUP BY job;
-- (2)显示雇员总数，以及获得补助的雇员数。
SELECT COUNT(*),COUNT(comm)   -- 这里后面不写，下面用where效果一样，但是不能同时显示所有与特有个数
	FROM emp
	/*where comm is not null*/;
-- 拓展：统计没有获得补助的人数	
SELECT COUNT(*),COUNT(IF(comm IS NULL,1,NULL)) -- comm为空值，则统计（不为null的数字即可）否则不计
	FROM emp;
SELECT COUNT(*),COUNT(*) - COUNT(comm)
	FROM emp;
-- 思路:获得补助的雇员数就是comm列为非null,就是count(列)，如果该列的值为null,是
-- 不会统计,SQL非常灵活，需要我们动脑筋.

-- (3)显示管理者的总人数。小技巧:尝试写->修改->尝试[正确的]
SELECT COUNT(DISTINCT mgr)   -- 一个管理管理很多人，去重复才是人数
	FROM emp;
-- (4)显示雇员工资的最大差额。
-- 思路：max(sal)-min(sal)
SELECT MAX(sal) - MIN(sal)
	FROM emp;
	
	-- 应用案例:请统计各个部门的平均工资，
-- 并且是大于1000的,并且按照平均工资从高到低排序,取出前两行记录.

SELECT deptno,AVG(sal) AS avl_sal
	FROM emp
	GROUP BY deptno
	HAVING avl_sal > 1000
	ORDER BY avl_sal DESC
	LIMIT 0,2;