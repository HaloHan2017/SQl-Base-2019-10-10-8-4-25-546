CREATE TABLE student(
  id VARCHAR2(10),
  name VARCHAR2(25),
  age NUMBER,
  sex VARCHAR(10) DEFAULT 'male',
  PRIMARY KEY(id)
);
INSERT INTO student VALUES('001','zhangsan',18,'male');
INSERT INTO student VALUES('002','lisi',20,'female');

CREATE TABLE subject(
  id VARCHAR2(10),
  subject VARCHAR2(25),
  teacher VARCHAR2(25),
  description VARCHAR(150),
  PRIMARY KEY(id)
);
INSERT INTO subject VALUES('1001','Chinese','Mr. Wang','the exam is easy');
INSERT INTO subject VALUES('1002','math','Miss Liu','the exam is difficult');

CREATE TABLE score(
  id NUMBER,
  student_id VARCHAR2(10),
  subject_id VARCHAR2(10),
  score FLOAT
);
CREATE SEQUENCE  score_sequence
increment by 1   
start with 1  
nomaxvalue  
minvalue 1  
NOCYCLE;

INSERT INTO score VALUES(NULL,'001','1001',80);
INSERT INTO score VALUES(NULL,'002','1002',60);
INSERT INTO score VALUES(NULL,'001','1001',70);
INSERT INTO score VALUES(NULL,'002','1002',60.5);
