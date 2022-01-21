CREATE TABLE `goods`(id INT,goods_name VARCHAR(32),price DOUBLE);
DESC goods

INSERT INTO goods(id,goods_name,price)
	VALUES(10,'huawei',5000);
	
SELECT *FROM goods;