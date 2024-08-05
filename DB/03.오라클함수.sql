        CHAPTER 03. 오라클함수
/*함수: 입력값을 넣어 특정한 기능을 통해 결과출력
사용자정의 함쉬: 사용자가 필요에 의해 직접정의
내장함수: 오라클에서 미리 만들어논 함수, 필요마다 호출해서 사용
=>문자형,숫자형, 날짜형, 반환형, null함수, 조건함수

함수이름():험수를 실행할때 사용하는 입력값: 매개변수, 인자값
1. 문자열함수: UPPER():모두 대문자로 반환 /LOWER():소문자로 반환*/
SELECT 'abced123@@'
FROM DUAL;
--DUAL테이블: 임시 연산, 함수 결과값 확인 용도 사용하는 테이스용 테이블/ 오라클 최고관리자 소유 테이블(SYS소유)
--직원테이블에서 직워늬 이름을 대문자로, 이메일을 소문자로

SELECT UPPER(FIRST_NAME)
FROM EMPLOYEES;

SELECT LOWER(EMAIL)
FROM EMPLOYEES;

--LENGTH():괄호안 문자 길이 구하는 함수

SELECT LENGTH('HELLO WORLD')
FROM DUAL;

--직원테이블에서 직원의 FIRST_NAME을 출력, FIRST_NAME의 길이도 출력
SELECT FIRST_NAME, LENGTH(FIRST_NAME)
FROM EMPLOYEES;

--직원의 FIRST_NAME의 길이가 5이상인 직원들의 직원아이디 ,이름
SELECT EMPLOYEE_ID, FIRST_NAME
FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME)>=5;

/*SUBSTR():문자열을 추출하는 하함수
    SUBSTR(입력값, 시작위치, 추출길이)
    SUBSTR(입력값, 시작위치)=>추출길이 생략시 시작부터 끝까지 출력
    */
SELECT SUBSTR('인공지능사관학교',3,2) AS 지능,SUBSTR('인공지능사관학교',1,4) AS 인공지능,
        SUBSTR('인공지능사관학교',5) AS 사관학교
FROM DUAL;



SELECT HIRE_DATE
FROM EMPLOYEES;

--입사날짜를 연도 ,월, 일별로 출력
SELECT SUBSTR(HIRE_DATE,1,2)AS 연도,
    SUBSTR(HIRE_DATE,4,2)AS 월,
    SUBSTR(HIRE_DATE,7)AS 일
FROM EMPLOYEES;

/*REPLACE():특정문자를 다른문자로 바꾸어 주는 함수
REPLACE(문자열데이터, 바꾸고 싶은 문자,바꿔야할 문자)
REPLACE(문자열데이터, 바꾸고 싶은 문자)=>바꿔야할 문자 생략시 바꾸고 싶은 문자 삭제*/
SELECT REPLACE('인공지능##사관학교','#')
FROM DUAL;

--직원테이블에서 입사날짜 출력하되 /문자열을 -로 바꿔 출력
SELECT REPLACE(HIRE_DATE,'/','-')
FROM EMPLOYEES;


-- -를 삭제 출력
SELECT REPLACE(HIRE_DATE,'/')
FROM EMPLOYEES;

/*CONCAT():두 문자열 데이터를 합치는 함수, 매개변수로 2개만 들어갈 수 있고 , 2개의 문자열만 합치는 함수
||이용하면 무한대 연결 가능

TRIM():입력받은 문자데이터의 양끝 공백 제거*/

SELECT CONCAT('인공지능','사관학교')||'최고'
FROM DUAL;

SELECT TRIM('          여러분은 최고!  ')
FROM DUAL;5

/*ROUND소수점 버리
--TRUN (A,B):생략시 첫ㅂㅓㄴ째 소수자리에서 벌
--B자리수만큼 제거
MOD(A,B):A를 B로 나누었을때 나머지

날짜형 함수: 
SYSDATE:현재 날짜, 시간 출력, 입력시 바로 초단위까지 출력, 연산 가능
날짜 형식 선택: 도구>환경설절>데이터베이스>NLS>날짜형식>YYYY-MM-DD HH24:MI:SS
DATE+DATE 불가
1/24:1시간 1/24/60:일분 1/24/60/60:1초
ADD_MONTH(날짜데이터,연산할 개월수):A개월후 날짜 구함
*/
SELECT SYSDATE AS 현재날짜, SYSDATE-1 AS 어제날짜
FROM DUAL;


/*형변환
암시적: 자동 형변환
명시적:사용자가 직접 형변환
TO_CHAT(변환할 데이터, 출력형태): 날짜, 숫자를 문자로 변환
TO_NUMBER(문자열데이터, 인식될 숫자형태):
TO_DATE(문자열데이터, 인식될 날짜형태)*/
SELECT SALARY AS 급여정보
    ,TO_CHAR(SALARY, 'L999,999')
    FROM EMPLOYEES;
    
/*NULL처리함수
NVL(NULL인지 검사할 데이터, NULL일경우 반환할 데이터):널값 대체 가능/ 
/NVL2(검사할 데이터,널이 아닐경우 반환데이터,널일경우 반환데이터):*/
SELECT FIRST_NAME, DEPARTMENT_ID,
NVL(DEPARTMENT_ID,0)
,NVL2(DEPARTMENT_ID, '있음','없음')
FROM EMPLOYEES;

--직원테이블에서 보너스가 널일경우 0으로 출력
SELECT NVL(COMMISSION_PCT,0)
FROM EMPLOYEES;


--직원테이블에서 직원아이디, 이름, 메니저아이디 출력, 메니저있는 직원은 직원, 없는 직워는 대표
SELECT EMPLOYEE_ID,FIRST_NAME,NVL2(MANAGER_ID,'직원','대표')
FROM EMPLOYEES;

--조건함수 DECODE(검사대상이 될 컬럼 OR 데이터<기준값>,비교값, 일치시 반환값, 일치안할때 반환값):상황에 따라서 다른 데이터를 변환하는 함수
--검사 대상과 비교햐 지정 값을 반환

SELECT FIRST_NAME, DEPARTMENT_ID, DECODE(DEPARTMENT_ID, NULL, '부서없음', '부서있음')
FROM EMPLOYEES;

SELECT FIRST_NAME, DEPARTMENT_ID, DECODE(DEPARTMENT_ID, NULL, '부서없음', 90,'부서 90', '부서있음')
FROM EMPLOYEES;


/*직원테이블에서 직원아이디, 직원이름, 매니저이름 출력 단, 매니저가 있는 직원은 직원, 없는 직원은 대표(DECODE)*/
SELECT EMPLOYEE_ID, FIRST_NAME, MANAGER_ID, DECODE(MANAGER_ID, NULL,'대표','직원')
FROM EMPLOYEES;
--매니저아이기다 100이면 이사
SELECT EMPLOYEE_ID, FIRST_NAME, MANAGER_ID, DECODE(MANAGER_ID, NULL,'대표',100,'이사','직원')
FROM EMPLOYEES;

SELECT EMPLOYEE_ID, FIRST_NAME, MANAGER_ID, DECODE(EMPLOYEE_ID, 100,'대표',101,'이사',102,'대표','직원')
FROM EMPLOYEES;
