--CHAPTER 04. GROUP BY/ HAVING

/*내장함수
1.단일행 함수: 입려된 하나의 행당 결과가 하나씩 =>문자, 숫자, 날짜, 변환,NULL, 조건함수
2.다중행 함수(집계함수): 여러행을 입력받아 하나의 값으로 출력
    1)NULL값 제외 2) 그룹화가 도ㅣ어있는 상태에서만 사용
    -종류 1)COUNT():데이터 개수 반환    2)SUM()데이터 합 반환    3)MAX() 데이터최대값 반환     4)MIN()최소값 반환     5)AVG() 평균값 반환*/
    
--직원테이블에서 직원아이디 행의 개수 조회
SELECT COUNT(EMPLOYEE_ID)--,EMPLOYEE_ID 오류 행의 수 불일치( 1/ 107)
FROM EMPLOYEES;
--GORUP BY();  :테이블을 하나의 그룹으로 인식

--SELECT COUNT(EMPLOYEE_ID),EMPLOYEE_ID --오류 행의 수 불일치( 1/ 107)
--FROM EMPLOYEES
--GORUP BY(EMPLOYEE_ID);  --:테이블을 하나의 그룹으로 인식

--직원테이블에서 부서 아이디의 행의 개수 조회
SELECT COUNT(DEPARTMENT_ID)
FROM EMPLOYEES;

--COUNT 함수는 *사용가능=>NULL까지 포함해 출력
SELECT COUNT(*)
FROM EMPLOYEES;


--직원테이블에서 급여 총액 합게 출력
SELECT SUM(SALARY)
FROM EMPLOYEES;

--직원테이블에서 최대급여 최소 급여 출력
SELECT MAX(SALARY), MIN(SALARY)
FROM EMPLOYEES;

--직원테이블에서 부서 아이디 100인 직원 평균 급여 출력 소수점 1의 자리까지

SELECT ROUND(AVG(SALARY),1)
FROM EMPLOYEES
WHERE DEPARTMENT_ID=100;

