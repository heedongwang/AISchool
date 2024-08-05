--CHAPTER 07.DML(DATA MANIPULATION LANGUAGE)
/* DML:데이터 조작어, 데이터 조회, 추가, 수정, 삭제할때 사용 질의어=>수정, 입력, 삭제

SELECT INTO 테이블명 (컬럼,컬럼..) OR 생략
    VALUES(값,값,...): 데이터 조회, 컬럼과 값의 순서가 같아야함, 컬럼생략시 모든 컬럼값 입력이라 간주
/ INSERT: 데이터 추가
/ UPDATE: 데이터 수정
/ DELECT: 데이터 삭제
*/

SELECT * FROM USE_JOIN;
--1. 정보 넣기
INSERT INTO USE_JOIN(ID,PW,NAME,JOIN_DATE,AGE,PHONE,EMAIL)
VALUES('USE01','12345','김희은',SYSDATE,27,'010-3036-8924','kim3he@naver,com');
SELECT * FROM USE_JOIN;

--2.짝꿍 정보 넣기 NULL값넣기
INSERT INTO USE_JOIN(ID,PW,NAME,JOIN_DATE,AGE,PHONE,EMAIL)
VALUES('USE02','11111','김희은',SYSDATE,27,NULL,'');
SELECT * FROM USE_JOIN;

--3.나의 친구의 정보를 넣기(이메일,전화번호 NULL)
--NULL값을 암시적으로 입력
INSERT INTO USE_JOIN(ID,PW,NAME,JOIN_DATE,AGE)
VALUES('USE03','11112','김희은',SYSDATE,22);
SELECT * FROM USE_JOIN;



-- 테이블 생성시 에러 리스트 

-- 1. 컬럼리스트와 입력 값의 개수가 다른 경우
INSERT INTO USE_JOIN (ID, PW, NAME, JOINDATE, AGE, TEL, EMAIL)
 VALUES ('호두아빠', '33333', '박병관' , SYSDATE, 29, '010-111-1111', 'HODO@GMAIL.COM', 'N');
 
--  SQL 오류: ORA-00913: too many values 
--> 컬럼 리스트의 갯수와 입력 값 개수는 일치해야 한다!

-- 2. 식별자에 NULL을 입력한 경우
INSERT INTO USE_JOIN (ID, PW, NAME, JOINDATE, AGE, TEL, EMAIL)
 VALUES (NULL, '33333', '박병관' , SYSDATE, 29, '010-111-1111', 'HODO@GMAIL.COM');

-- ORA-01400: cannot insert NULL into ("HR"."SMHRD_JOIN"."ID")
--> 컬럼에 대한 제약조건에 맞게 작성 해야함 (식별자는 NOT NULL + UNIQUE 중복불가)

-- 3. NOT NULL인 컬럼에 NULL을 넣은 경우
INSERT INTO USE_JOIN (ID, PW, NAME, JOINDATE, AGE, TEL, EMAIL)
 VALUES ('호두아빠', '33333', NULL , SYSDATE, 29, '010-111-1111', 'HODO@GMAIL.COM');

-- ORA-01400: cannot insert NULL into ("HR"."SMHRD_JOIN"."NAME")
--> 컬럼에 대한 제약조건에 맞게 작성 해야함 ( NOT NULL 조건 )

-- 4. 자료형에 맞지 않게 입력 값을 넣은 경우
INSERT INTO USE_JOIN (ID, PW, NAME, JOINDATE, AGE, TEL, EMAIL)
 VALUES ('호두아빠', '33333', '박병관' , SYSDATE, '29살', '010-111-1111', 'HODO@GMAIL.COM');

-- ORA-01722: invalid number
--> 컬럼에 대한 자료형에 맞게 작성이 되야 한다. (AGE는 숫자형 자료형)

-- 5. 식별자 컬럼에 중복 값을 넣을 려는 경우
INSERT INTO USE_JOIN (ID, PW, NAME, JOINDATE, AGE, TEL, EMAIL)
 VALUES ('호두아빠', '33333', '박병관' , SYSDATE, 29, '010-111-1111', 'HODO@GMAIL.COM');
 
-- unique constraint (HR.SYS_C007110) violated
--> 값이 들어간 상태에서 한번더 실행이 되면 식별자가 값이 중복이 되서 에러가 남

SELECT * FROM USE_JOIN  ;


--컬럼리스트 쓰지 않고 INSERT=> 컬럼순서에 따라 값을 넣음

INSERT INTO USE_JOIN
VALUES('USE04', '33333', '박병관' , SYSDATE, 29, '010-111-1111', 'HODO@GMAIL.COM');
SELECT * FROM USE_JOIN  ;


--실습

CREATE TABLE USE_SONGLIST(
NO NUMBER(3)PRIMARY KEY,
TITLE VARCHAR2(20) NOT NULL,
SINGER VARCHAR2(20),
GENDER VARCHAR2(10) CHECK(GENDER='남' OR GENDER='여'));
-- CHECK (GENDER IN ('남' ,'여'))
INSERT INTO USE_SONGLIST
VALUES( 1, '야생화','박효신','남');
SELECT* FROM USE_SONGLIST;

/*CREATE TABLE USE_SONGLIST(
NO NUMBER(3),
TITLE VARCHAR2(20),
SINGER VARCHAR2(20),
GENDER VARCHAR2(10));

ALTER TABLE USE_SONGLIST ADD CONSTRAINT NO_PK PRIMARY KEY;
ALTER TABLE USE_SONGLIST ADD CONSTRAINT GENDER_CK CHECK(GENDER IN ('남' ,'여'));
*/

--UPDATE :테이블 데이터 변경
/*UPDATE 테이블명
  SET 변경 컬럼= 데이터 값....
  WHERE 변경행 선별  =>WHERE 생략시 테이블 모든 값이 변경됨
  조건 걸때는 PK값을 걸어야함*/
  
  SELECT * FROM USE_JOIN;
  
  UPDATE USE_JOIN
  SET ID='USE04'
  WHERE ID='USER04';
  
  SELECT * FROM USE_JOIN;
  
  --DELETE :데이터 삭제==> ROLLBACK 사용 가능
  /* DELETE FROM 테이블명
     WHERE 삭제 대상 선별;
     ** WHERE 조건절 생략시 테이블 모든 데이터 삭제됨 */
  
--28살 초과인 회원들 정보를 삭제
DELETE FROM USE_JOIN
WHERE AGE>28;


