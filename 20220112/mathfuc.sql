SELECT ABS(-10) FROM DUAL;

SELECT BIN(10) FROM DUAL;  #10进制转2进制

SELECT CEILING(-11.6) FROM DUAL;#向上取整
SELECT FLOOR(-22.7);  #向下取整

SELECT CONV(10,16,2) FROM DUAL;   #10(16进制的10)转为2进制    from dual不写好像也不报错

SELECT FORMAT(12.4567,3);   #保留小数位数，四舍五入

SELECT MOD(3.1415926,3);   #取余

SELECT RAND();  #0-1随机数
SELECT RAND(1);

