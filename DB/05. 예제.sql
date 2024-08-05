DROP TABLE 학생인적사항 ;
DROP TABLE 수강생정보 ; 
DROP TABLE 성적표 ; 

CREATE TABLE 수강생정보 (
학생ID   VARCHAR2(9) PRIMARY KEY , 
학생이름  VARCHAR2(50) NOT NULL , 
소속반    VARCHAR2(5) 
); 

CREATE TABLE 성적표 ( 
    학생ID VARCHAR2(9) , 
    과목   VARCHAR2(30) , 
    성적   NUMBER  , 
    CONSTRAINT PK_성적표 PRIMARY KEY(학생ID , 과목) , 
    CONSTRAINT FK_성적표 FOREIGN KEY(학생ID) REFERENCES 수강생정보(학생ID) 
)  ; 

INSERT INTO 수강생정보 VALUES ('SMHRD1' , '조준용' , 'A') ; 
INSERT INTO 수강생정보 VALUES ('SMHRD2' , '박수현' , 'A') ; 
INSERT INTO 수강생정보 VALUES ('SMHRD3' , '박병관' , 'B') ; 
INSERT INTO 수강생정보 VALUES ('SMHRD4' , '이명훈' , 'B') ; 
INSERT INTO 수강생정보 VALUES ('SMHRD5' , '나예호' , 'B') ; 
INSERT INTO 수강생정보 VALUES ('SMHRD6' , '선영표' , 'C') ; 
INSERT INTO 수강생정보 VALUES ('SMHRD7' , '최영화' , 'C') ; 
INSERT INTO 수강생정보 VALUES ('SMHRD8' , '송찬호' , 'C') ; 
INSERT INTO 수강생정보 VALUES ('SMHRD9' , '임승환' , 'C') ; 

INSERT INTO 성적표 VALUES('SMHRD1'  ,'JAVA' , 90); 
INSERT INTO 성적표 VALUES('SMHRD1'  ,'DATABASE' , 85); 
INSERT INTO 성적표 VALUES('SMHRD1'  ,'PYTHON' , 100); 
INSERT INTO 성적표 VALUES('SMHRD2'  ,'JAVA' , 100); 
INSERT INTO 성적표 VALUES('SMHRD2'  ,'DATABASE' , 100); 
INSERT INTO 성적표 VALUES('SMHRD2'  ,'PYTHON' , 20); 
INSERT INTO 성적표 VALUES('SMHRD3'  ,'JAVA' , 100); 
INSERT INTO 성적표 VALUES('SMHRD3'  ,'DATABASE' , 100); 
INSERT INTO 성적표 VALUES('SMHRD3'  ,'PYTHON' , 20); 
INSERT INTO 성적표 VALUES('SMHRD4'  ,'JAVA' , 85); 
INSERT INTO 성적표 VALUES('SMHRD4'  ,'DATABASE' , 40); 
INSERT INTO 성적표 VALUES('SMHRD4'  ,'PYTHON' , 60); 
INSERT INTO 성적표 VALUES('SMHRD5'  ,'JAVA' , 100); 
INSERT INTO 성적표 VALUES('SMHRD5'  ,'DATABASE' , 100); 
INSERT INTO 성적표 VALUES('SMHRD5'  ,'PYTHON' , 100); 
INSERT INTO 성적표 VALUES ( 'SMHRD6' , 'JAVA' , NULL ) ; 
INSERT INTO 성적표 VALUES ( 'SMHRD6' , 'DATABASE' , NULL ) ; 
INSERT INTO 성적표 VALUES ( 'SMHRD6' , 'PYTHON' , NULL ) ; 

COMMIT;

SELECT *
FROM 수강생정보;


SELECT*
FROM 성적표;

--GROUP BY:특정컬럼을 기준으로 급룹화

--소속반별 인원수 조회
SELECT 소속반,COUNT(소속반)
FROM 수강생정보
GROUP BY 소속반;

/*SQL작성순서 select>from>where>group by>hving>order by
실행순서 FROM>WHERE> GROUP> HAVING> SELECT>ORDER BY*/

--성적테이블 과목별 최고 최저 성적출력
SELECT *
FROM 성적표;

SELECT 과목,MAX(성적),MIN(성적)
FROM 성적표
GROUP BY 과목;

/*group by 유의사항
1. 실제 출력행이 감소되어 group보다 늦게 실행되는 절인 having, select, order절에는 출력가능 행이제한
2. 집계함수로 처리하는 컬럼은 사용가능*/

--성적표에서 학생별 평균 점수 출력 소수1자리
SELECT * FROM 성적표;

SELECT 학생ID,ROUND(AVG(성적),1)
FROM 성적표
GROUP BY 학생ID;

--성적표 테이블에서 학생뵬로 JAVA와 DB의 과목의 합만 출력
SELECT *
FROM 성적표;

SELECT 학생ID, 과목
FROM 성적표
WHERE 과목 IN ('JAVA', 'DATABASE')
GROUP BY 학생ID, 과목;


SELECT 학생ID,SUM(성적)
FROM 성적표
WHERE 과목 IN ('JAVA', 'DATABASE')
GROUP BY 학생ID;

--SELECT 학생ID,SUM(과목)
--FROM 성적표
--WHERE 과목 IN ('JAVA', 'DATABASE')
--GROUP BY 학생ID; 

/*HAVING :GROUP BY 존재할때만 사용가능
집계 완료된 대상을 조건을 통해 필터링 */


--성적표테이블에서 학생별 평균성적 구하고 평균이 75이하인 학생만 출력
SELECT 학생ID, ROUND(AVG(성적),1)
FROM 성적표
GROUP BY 학생ID
HAVING AVG(성적)<=75;
--WHERE :출력 대상행을 제한
--HAVING: 그룹화된 대상 제한


--수강생에서 소속반 별 인원수가 3명이상인 반 출력
SELECT * FROM 수강생정보;

SELECT 소속반
FROM 수강생정보
GROUP BY 소속반
HAVING COUNT(소속반)>=3;

--직원테이블에서 부서별 최고 연봉이 100000  이상인 부서만 출력

SELECT DEPARTMENT_ID, MAX(SALARY*12) AS "연봉"
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING MAX(SALARY*12)>=100000;

SELECT*
FROM EMPLOYEES;


