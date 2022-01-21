#演示整型的是一个 
#老韩使用 tinyint 来演示范围 有符号 -128 ~ 127 如果没有符号 0-255 
#说明： 表的字符集，校验规则, 存储引擎，老师使用默认 
#1. 如果没有指定 unsinged , 则 TINYINT 就是有符号 
#2. 如果指定 unsinged , 则 TINYINT 就是无符号 0-255
CREATE TABLE t3(
	id TINYINT
);  #其他都默认

CREATE TABLE t4(
	id TINYINT UNSIGNED
);  #其他都默认

INSERT INTO t3 VALUES(-128);
SELECT *FROM t3

INSERT INTO t4 VALUES(3);
SELECT *FROM t4