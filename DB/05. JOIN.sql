--CHAPTER 05. JOIN
/*JOIN: 여러 테이블에서 필요한 데이터를 한번에 가져오는 기술
비등가 조인(NON EQUI JOIN):두개의 테이블간에 정확하게 일치하지 않는 경우 사용(!=)
=> (<,>,BETWEEN....)
등가 조인(EQUI JOIN):두 테이블간 정확히 일치하면 사용
        등가연산자 사용(=)
        
사용방법 select 테이블1.컬럼명1, 테이블2,컬럼명2..
        from 테이블1,테이블2
        where 테이블1.컬럼명=테이블2.컬럼명;*/
        
        
SELECT * FROM 수강생정보;

SELECT 수강생정보.학생ID,수강생정보.학생이름, 성적표.과목, 성적표.성적
FROM 수강생정보, 성적표
WHERE 수강생정보.학생ID=성적표.학생ID;


--직원의 직원아이디와 first_name, 부서이름순으로 출력
SELECT Ｅ.EMPLOYEE_ID, Ｅ.FIRST_NAME,　Ｄ.DEPARTMENT_NAME
FROM EMPLOYEES　Ｅ, DEPARTMENTS　Ｄ
WHERE Ｅ.DEPARTMENT_ID= Ｄ.DEPARTMENT_ID;

SELECT A.학생ID,A.학생이름, B.과목, B.성적
FROM 수강생정보 A, 성적표 B
WHERE A.학생ID=B.학생ID;

--직원아이디가 100인 직원의 FIRST_NAME,부서이름 ㅊㄹ력
SELECT EMPLOYEES.FIRST_NAME, DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES, DEPARTMENTS
WHERE EMPLOYEES.DEPARTMENT_ID= DEPARTMENTS.DEPARTMENT_ID AND EMPLOYEE_ID=100;

SELECT E. EMPLOYEE_ID,E.FIRST_NAME, D.DEPARTMENT_NAME
FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEPARTMENT_ID= D.DEPARTMENT_ID AND E.EMPLOYEE_ID=100;



--ANSI 조인문법 :미국 표준협회에서 만든 DBMS 문법
/*INNER JOIN :내부 조인 , 조인 조건에서 동일한 값이 있는 행만 반환=> 등가조인과 동일
    3.SELECT
    1.FROM 테이블1 INNER JOIN 테이블2
                    ON (테이블1.컬ㄻ=테이블2=컬럼)
    2.WHERE 일반 조건절*/


--직원테이블에서 직원아이디, 부서아이디/ 부서테이블에서 부서이름 출력
SELECT EMPLOYEES.EMPLOYEE_ID,EMPLOYEES.DEPARTMENT_ID, DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES INNER JOIN DEPARTMENTS
ON EMPLOYEES.DEPARTMENT_ID=DEPARTMENTS.DEPARTMENT_ID;

SELECT e.EMPLOYEE_ID,e.DEPARTMENT_ID, d.DEPARTMENT_NAME
FROM EMPLOYEES e INNER JOIN DEPARTMENTS d
ON (e.DEPARTMENT_ID=d.DEPARTMENT_ID);

--조인할 테이블의 단독컬럼이면 경로를 안적어도 오류없음 but 경로 적는 것이 좋음
--*대부분* 조인조건은 pk,fk의 관계로 이루어짐

--직원아이디 ,잡아이디, 잡타이틀의 정보를 순서대로 출력
SELECT E.EMPLOYEE_ID, J.JOB_ID, J.JOB_TITLE
FROM EMPLOYEES E INNER JOIN JOBS J
ON (E.JOB_ID=J.JOB_ID); --INNER 생략가능

/*CROSS JOIN: 조인 조건절을 쓰지않고 모든 데이터 가져옴
=>카티션 곱: 모든 경우의 수 출력*/

--직원테이블의 직원아이디, 부서아이디/ 부서테이블의 부서이름 출력
SELECT E.EMPLOYEE_ID,E.DEPARTMENT_ID, D.DEPARTMENT_NAME
FROM EMPLOYEES E CROSS JOIN DEPARTMENTS D ; --CROSS 생략가능 => JOIN일때 ON 있으면 INNER / 없으면 CROSS

/* OUTER JOIN: 외부조인, 두 테이블의 합집합, 한쪽의 NULL값도 출력
LEFT: 외쪽 테이블 기준 => 오라클 문법: 오른쪽에 +기호
RIGHT: 오른쪽 테이블 기준=> 오라클 문법: 왼쪽에 +기호
FULL: 양쪽 모두 적용,UNION=FULL OUTER JOIN */

--각 부서의 매니저의 부서 이름과 매니저 아이디와 매니저이름을 출력
SELECT d.department_name, D.MANAGER _ID ,E.FIRST_NAME
FROM DEPARTMENTS D INNER JOIN EMPLOYEES E
ON D.MANAGER_ID= E.EMPLOYEE_ID
--ON (E.DEPARTMENT_ID= D.DEPARTMENT_ID) AND (E.EMPLOYEE_ID=D.MANAGER_ID);


SELECT D.DEPARTMENT_NAME, D.MANAGER _ID , E.FIRST_NAME
FROM EMPLOYEES E , DEPARTMENTS D
WHERE D.MANAGER_ID =E.EMPLOYEE_ID;
