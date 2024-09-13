CREATE TABLE TB_USER(
	USER_NO     NUMBER CONSTRAINT TB_USER_PK PRIMARY KEY,
	USER_ID     VARCHAR2(30) NOT NULL,
	USER_PW     VARCHAR2(30) NOT NULL,
	USER_NAME   VARCHAR2(30) NOT NULL,
	ENROLL_DATE DATE DEFAULT CURRENT_DATE
);

COMMENT ON COLUMN TB_USER.USER_NO     IS '사용자 번호';
COMMENT ON COLUMN TB_USER.USER_ID     IS '사용자 아이디';
COMMENT ON COLUMN TB_USER.USER_PW     IS '사용자 비밀번호';
COMMENT ON COLUMN TB_USER.USER_NAME   IS '사용자 이름';
COMMENT ON COLUMN TB_USER.ENROLL_DATE IS '사용자 가입일';


-- USER_NO 컬럼에 삽입될 시퀀스 생성
CREATE SEQUENCE SEQ_USER_NO NOCACHE;

-- 샘플 데이터 INSERT
INSERT INTO TB_USER 
VALUES(SEQ_USER_NO.NEXTVAL, 'user01', 'pass01', '유저일', DEFAULT );
INSERT INTO TB_USER 
VALUES(SEQ_USER_NO.NEXTVAL, 'user02', 'pass02', '유저이', DEFAULT );

SELECT * 
FROM TB_USER
ORDER BY USER_NO ASC;

SELECT *
FROM TB_USER
WHERE USER_NO = 8;

UPDATE TB_USER
SET USER_PW = ?, 
USER_NAME = ?
WHERE USER_NO = ?



COMMIT;

CREATE TABLE TO_DO_LIST(

	NO     		NUMBER PRIMARY KEY,
	TITLE  		VARCHAR2(30) NOT NULL,
	DETAIL		VARCHAR2(200) NOT NULL,
	COMPLETE	CHAR(3) NOT NULL,
	REG_DATE 	DATE DEFAULT CURRENT_DATE
);

CREATE SEQUENCE SEQ_NO NOCACHE;

INSERT INTO TO_DO_LIST 
VALUES(SEQ_NO.NEXTVAL, 'Servlet 복습', '수업 내용 복습222', 'O', DEFAULT );

ALTER TABLE TO_DO_LIST ADD CHECK(COMPLETE IN ('O', 'X') );
DROP TABLE TO_DO_LIST;
SELECT * FROM TO_DO_LIST;


SELECT USER_NAME
FROM TB_USER;

UPDATE TB_TODO
SET TODO_COMPLETE = 0
WHERE TODO_NO = 3;

COMMIT;

INSERT INTO "MEMBER"
VALUES(
	
SEQ_MEMBER_NO.NEXTVAL, 
	
	'member02@kh.or.kr', 
		'$2a$10$KzFKEvO4C65xBTetZDV8QufZvhQnIGU0SE5ZEaZo0T9SrdYS5oFMC',
	 '샘플2', 
	 '01022222222', 
	 NULL, NULL, DEFAULT, DEFAULT, DEFAULT);

INSERT INTO "MEMBER"
VALUES(
	SEQ_MEMBER_NO.NEXTVAL, 
	'member03@kh.or.kr', 
	'$2a$10$KzFKEvO4C65xBTetZDV8QufZvhQnIGU0SE5ZEaZo0T9SrdYS5oFMC',
	 '샘플3', 
	 '01033333333', 
	 NULL, NULL, DEFAULT, DEFAULT, DEFAULT);

COMMIT;
