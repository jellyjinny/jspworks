-- engineer 테이블 생성
CREATE TABLE engineer(
	eid  NUMBER(4) PRIMARY KEY,
	epasswd VARCHAR2(20) NOT NULL,
	ename VARCHAR2(30) NOT NULL
);

INSERT INTO engineer VALUES (1001, 'en123', '신기술');

SELECT * FROM ENGINEER;
