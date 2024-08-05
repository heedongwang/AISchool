--CHAPTER 01. SELECT
/*
SELCET절 기본사용 방법
2.SELECT 조회할 컬럼명1, 컬럼명2,....,
1.FROM 조회할 테이블 이름 
*/
select first_name from employees;

--글자 크기: 도구>환경설정>코드편집기>글꼴
--주석 글자 색 :                        >PL/SQL주석 
/* 여러줄 주석
SQL 대소문자 구분안함
띄어쓰기 줄바꿈 영향없음
문장끝 ; 반드시 필요
CTRL+ ENTER,F9=실행버튼*/

SELECT FRIST_NAME
  FROM EMPLOYEES;
  
--직원 테이블에서 직원의 이메일 정보 출력
    
SELECT EMAIL
  FROM EMPLOYEES;
  
--직원테이블에서 직원 ID,FIRST_NAME, PHONE_NUMBER,SALART(급여) 정보출력
SELECT EMPLOYEE_ID, FIRST_NAME, PHONE_NUMBER, SALARY
  FROM EMPLOYEES;

-- *: select 절에 사용시 '아스타리스크'=> 와일드카드=>전체를 의미

SELECT *
  FROM EMPLOYEES; --테이블 전체 값 호출
  
  --부서테이블 전체 정보를 출력하고 행의 개수?
  SELECT *
    FROM DEPARTMENTS;
    
--실습1) 직원테이블에서 직원ID/ FIRST_NAME, 메니저ID
SELECT EMPLOYEE_ID, FIRST_NAME, MANAGER_ID
  FROM EMPLOYEES;

--실습2) 부서테이블 부서ID/부서명/위치ID
SELECT DEPARTMENT_ID,DEPARTMENT_NAME,LOCATION_ID
  FROM DEPARTMENTS;
  
--직원테이블에서 직원의 부서 id
SELECT DEPARTMENT_ID
  FROM EMPLOYEES;
  
/*DISTINCT: 데이터 중복 제거=> 1개의 컬럼만 작성
SELECT [DISTINCT/ALL] 컬럼명
FROM 테이블이름 */

SELECT DISTINCT DEPARTMENT_ID
  FROM EMPLOYEES;
  

  --직원테이블ㅇ에서 JOB_ID 중복제거해 출력
  SELECT DISTINCT JOB_ID
    FROM EMPLOYEES;
    
-- 직원테이블에서 JOB_ID 와 부서_ID 중복제거
SELECT DISTINCT JOB_ID,DEPARTMENT_ID
 FROM EMPLOYEES;
/*DISTINCT뒤에 2개 이상의 컬럼을 적게되면 
한쪽컬럼에 중복이 있어도 다른쪽이 다르면 다르다고 취급
TIP: 컬럼에 숫자 연산 가능(+,-,*,/)*/

--직원테이블에서 FIRST_NAME , 급여 출력
SELECT FIRST_NAME,SALARY
 FROM EMPLOYEES;
 
 --직원 이름/급여의 연봉의 정보를 출력
 SELECT  FIRST_NAME,SALARY, SALARY*12
 FROM EMPLOYEES;
 
 
/*별칭 사용하기 ALIAS:한분에 보기 좋게 설정
 --AS키워드 사용
 SELECT 컬럼 별칭     SELECT 컬럼 "별칭"      SELECT 컬럼 AS 별칭     SELECT 컬럼 AS "별칭"
 별칭사용시 특수문자, 띄어쓰기 하지 않음
 */
 SELECT  FIRST_NAME AS "이름",SALARY*12 AS "연봉"
  FROM EMPLOYEES;
  
  --직원테이블에서 직원의 이름과 입사일(HIRE_DATE)정보,일사일 다음날  출력
     --SELECT FIRST_NAME ,HIRE_DATE , HIRE_DATE+1 AS "입사일다음날"
     --SELECT FIRST_NAME ,HIRE_DATE , HIRE_DATE+1 AS 입사일다음날 --가장많이 사용
     --SELECT FIRST_NAME ,HIRE_DATE , HIRE_DATE+1 "입사일다음날"
        SELECT FIRST_NAME ,HIRE_DATE , HIRE_DATE+1 입사일다음날
     FROM EMPLOYEES;
     
     
     
/*ASC: 오름차순(기본정렬),  DESC:내림차순
ORDER BY절: 특정 칼럼을 시주으로 정렬된 상태, SQL마지막에 실행 */

--DESC EMPLOYEES=> DESCRTS:테이블 구조 확인하는 명령어

--직원테이블에서 모든 직원의 정보를 출력하는데 급여기준 오름차순
SELECT *
FROM EMPLOYEES 
ORDER BY SALARY ASC;

--직원테이블 최근 입사날짜기준 이름, 입사날짜
SELECT FIRST_NAME, HIRE_DATE
FROM EMPLOYEES
ORDER BY HIRE_DATE ASC;

--직원테이블 직원id,부서id,이름,급여 순 정렬
SELECT EMPLOYEE_ID, DEPARTMENT_ID, FIRST_NAME, SALARY
FROM EMPLOYEES
ORDER BY DEPARTMENT_ID ASC,SALARY DESC;
--부서를 오름차순하고, 부서내에서 급여를 내림차순한 결과

--NULL값: 데이터 값이 완전히 비어있는 상태, 값이 정해지지않거나 존재하지 않음
--숫자0, 빈 문자열은 NULL값이 아님=> NULL과 연산하면 결과는 NULL/ 비교하면 결과는 FALSE

--직원 테이블에서 직원id,보너스(COMMISSION_PCT)/ 보너스 *2 출력
SELECT EMPLOYEE_ID, COMMISSION_PCT, COMMISSION_PCT*2 AS "UP_BONUS"
FROM EMPLOYEES;
/*보너스 값이 존재하지 않기 때문에(완전히 비어있는 상태) 연산이 불가능해 null값으로 출력*/


