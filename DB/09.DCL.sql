--CHAPTER 09.DCL(Dat Control Language) 


/*db에 적근하거나 객체에 권하는 주는 역할
1.grant :권한 부여
2.erevoke;권한 회수
3.role:권한 묶어서 사용, 비슷한 종류의 권한 모아 놓은 
    -종류: CONNECT:DB 접속에 필요한 권한 묶음
          RESOURCE: 테이블,시퀀스 등 객체 생성 권한 묶음
          DBA: DB를 관리한 대부분의 시스템 권한 묶음( 함부로 사용X)
        =>협업에서 권하는 주는 방법 GRANT CONNECT , RESOURCE TO USER_NAME;
        
사용자: user: db에 접속하여 데이터를 관리하는 계정 사용자
user 생성 1)create user 사용자 이름 
         2)identified by 패스워드
         create user dcltest identified by 12345;
         
권한 부여 grant 권한 to user;
권한 회수 revoke 권한 from user;
*/

CREATE TABLE TEST_TB(
ID VARCHAR2(10));
--ORA-01031: insufficient privileges: 권한 불충분   
SELECT * FROM TEST_TB;

--다른 USER 계정에 접속 가능=> 스키마
--객체권한: 특정 사용자의 갹채애 권한 부여, 사용자가 SELECT OR UPDATE라는 DML작업이 가능함
/*GRANT 시스템 권한 =>SELECT, UPDATE...
  ON 스키마. 객체이름 
  TO  USER_NAME;*/
SELECT * FROM HR.EMPLOYEES;

UPDATE HR.EMPLOYEES
SET FIRST_NAME='김', LAST_NAME='희은'
WHERE EMPLOYEE_ID=100;

SELECT * FROM EMPLOYEES;
COMMIT;
