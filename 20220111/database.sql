#演示数据库创建
#创建一个名称为 hsp_db01 的数据库。[图形化和指令 演示]


#使用指令创建数据库
CREATE DATABASE restart   #默认排序规则与字符集
#删除数据库指令
DROP DATABASE restart
DROP DATABASE hsp_db03
#创建一个使用 utf8 字符集的 hsp_db02 数据库
CREATE DATABASE hsp_db02 CHARACTER SET utf8
#创建一个使用 utf8 字符集，并带校对规则的 hsp_db03 数据库
CREATE DATABASE hsp_db03 CHARACTER SET utf8 COLLATE utf8_bin
#校对规则 utf8_bin 区分大小 默认 utf8_general_ci 不区分大小写

#查询的sql语句,*表示查询所有字段,from表示从那个表查询   
SELECT *
	FROM t1 
	WHERE NAME = 'Jerry';
