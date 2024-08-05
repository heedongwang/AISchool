--CHAPTER 10.서브쿼리
/*서브쿼리: SQL문을 실행하는데 필요한 데이터를 추가로 조회하기 위해 내부에서 사용하는 SELCET문을 의미 
          메인 쿼리의 조건식에 들어가는 값
          특징: 연산자와 같은 비교 또는 조회 대상의 오른쪽에 놓이며 ()로 묶어 시용
               SELECT 절에 명시한 컬럼은 메인쿼리의 비교 대상과 같은 자료형과 개수를 지정해야 한다.
               서브 쿼리에 있는 SELECT문의 결과 행 수는 메인쿼리의 연산자와 호환가능해야한다.
                하나의 데이터 만으로 가능한 연산자이면 서브쿼리의 결과행도 한개
                연산자와함께 상호작용하는 방식에 따라 단일행/다중행 서브쿼리로 나뉨
                
단일행 서브쿼리: 실행 결과가 하나의 행으로 나오는 서브쿼리=> =,>,>=,<,<=,<>,!=.^=
    
매인쿼리: 서브쿼리의 결과값을 사용하는 기능*/

--직원테이블에서 FIRST_NAME이 Jack인 급여정보
SELECT  FIRST_NAME,SALARY
FROM EMPLOYEES
WHERE FIRST_NAME='Jack';

--jack이라는 직원의 급여보다 낮은 직원의 이름과 급여를 출력
SELECT FIRST_NAME,SALARY
FROM EMPLOYEES
WHERE SALARY<(SELECT SALARY
FROM EMPLOYEES
WHERE FIRST_NAME='Jack')
ORDER BY SALARY ASC;

--JAMES의 급여보다 낮은 직원의 이름괴 급여 조회=> JAMES 두명, 에러 발생

SELECT SALARY,LAST_NAME,FIRST_NAME
FROM EMPLOYEES 
WHERE FIRST_NAME='James';

SELECT FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY<(
SELECT SALARY
FROM EMPLOYEES 
WHERE FIRST_NAME='James');
/*ORA-01427: single-row subquery returns more than one row
    단일행 서브쿼리는 하나의 행만 출력 할수 있음*/
    

--Nancy 입사일 조회
SELECT FIRST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE FIRST_NAME='Nancy';

--직원테이블에서 Nancy 보다 빨리 입사한 직원의 이름과 입사일을 조회
SELECT FIRST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE<
(SELECT HIRE_DATE
FROM EMPLOYEES
WHERE FIRST_NAME='Nancy');

--직원 평균 급여
SELECT ROUND(AVG(SALARY) ,2)
FROM EMPLOYEES;

--직원의 평균 급여보다 높은 급여를 받은 직원의 이름과 급여 조회
SELECT FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES)
ORDER BY SALARY;


/*다중행 서브쿼리: 실행결과 행이 여러개인 서브쿼리
    연산자: IN:메인쿼리의 데이터가 한개라도 일치하면 TRUE(=OR) =>IN(서브쿼리)
           ANY:메인쿼리의 조건식을 만족하는 결과가 하나 이상이면 TRUE=> 비교연산자 ANY(서브쿼리)
           ALL:메인쿼리의 조건식을 모두 만족하면 TRUE => 비교연산자 ALL(서브쿼리)
           EXISTS:서브 쿼리값이 존재하는 지 여부 확인( 행이 한개이상이면 TURE)=> EXISTS(서브쿼리)
               */
SELECT* FROM EMPLOYEES; 

--각 부서별 최고 급여 정보 출력 (GROUP BY),(부서ID,FIRST_NAME,급여

SELECT MAX(SALARY)
FROM EMPLOYEES
GROUP BY (DEPARTMENT_ID);

SELECT DEPARTMENT_ID, FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY IN (SELECT MAX(SALARY)
                FROM EMPLOYEES
                GROUP BY DEPARTMENT_ID);
--부서별 최고급여와 같은 급여를 가지는 모든 직원이 출력된것 => 결과에 존재하는 값들중 일치

--ANY 이용=> IN과 같은 결과값

SELECT DEPARTMENT_ID, FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY =ANY (SELECT MAX(SALARY)
                FROM EMPLOYEES
                GROUP BY DEPARTMENT_ID);
                
SELECT DEPARTMENT_ID, FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY >=ANY (SELECT MAX(SALARY)
                FROM EMPLOYEES
                GROUP BY DEPARTMENT_ID);
-->서브쿼리의 최소값보다 큰 값을 가지면 출력

--ALL사용: 서브쿼리의 값과 모두 만족해야함
SELECT DEPARTMENT_ID, FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY =ALL (SELECT MAX(SALARY)
                FROM EMPLOYEES
                GROUP BY DEPARTMENT_ID);


SELECT DEPARTMENT_ID, FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY >=ALL (SELECT MAX(SALARY)
                FROM EMPLOYEES
                GROUP BY DEPARTMENT_ID);
--서브쿼리의 값중 최대와 비요해 크거나 같은 값 출력

--EXISTS
SELECT DEPARTMENT_ID, FIRST_NAME
FROM EMPLOYEES
WHERE EXISTS (SELECT FIRST_NAME, DEPARTMENT_ID
                FROM EMPLOYEES
                WHERE DEPARTMENT_ID =110;); 