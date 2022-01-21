-- 合并查询
SELECT ename,sal,job FROM emp WHERE sal > 2500
SELECT ename,sal,job FROM emp WHERE job = 'MANAGER'

-- union all 合并不去重
SELECT ename,sal,job FROM emp WHERE sal > 2500
UNION ALL
SELECT ename,sal,job FROM emp WHERE job = 'MANAGER'

-- union 合并去重   -- 之前的为列合并，这里为满足的行结果合并
SELECT ename,sal,job FROM emp WHERE sal > 2500
UNION
SELECT ename,sal,job FROM emp WHERE job = 'MANAGER'

