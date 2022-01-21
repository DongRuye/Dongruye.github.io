CREATE TABLE department(
	departmentid VARCHAR(32) PRIMARY KEY,
	deptname VARCHAR(32) UNIQUE NOT NULL
);

CREATE TABLE class(
	classid INT PRIMARY KEY,
	`subject` VARCHAR(32) NOT NULL DEFAULT '',
	deptname VARCHAR(32), -- 外键
	enrolltime INT NOT NULL DEFAULT 2000,
	num INT NOT NULL DEFAULT 0,
	FOREIGN KEY(deptname) REFERENCES department(deptname)
);

CREATE TABLE student1(
	studentid INT,
	`name` VARCHAR(32) NOT NULL DEFAULT '',
	age INT NOT NULL DEFAULT 0,
	classid INT,
	FOREIGN KEY(classid) REFERENCES class(classid)
);