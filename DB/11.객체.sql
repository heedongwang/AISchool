/*객체(object):       
뷰(view): 하나 이상의 테이블에서 여러 정보를 토대로 만들어지는 가상 테이블
    목적: 편리성: 자주사용하는 select 문장 저장
         보안성:  특정 데이터를 노출시키지 않음
    
    뷰 생성: CREATE VIEW 이름
            AS 저장할 SLECET 문 */
            
--사장님의 정보(직원아이디, 이름,이메일, 직업아이디, 급여
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL,JOB_ID, SALARY
FROM EMPLOYEES
WHERE EMPLOYEE_ID=100;

--뷰 생성
CREATE VIEW VIEW_EMP100
AS SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL,JOB_ID, SALARY
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID=100;
    
SELECT * FROM VIEW_EMP100;

/*시퀀스: 특정 규칙에 맞는 연속 숫자 생성, 대기표 처럼 다음 번호 계속 생성
    주로 PK컬럼들의 유일값 만들때 활용
    상용방법:
            시퀀스이름.CURRVAL:마지막 생성번호
            시퀀스이름. NEXTVAL:다음번호 반환*/
            
CREATE SEQUENCE SEQ_DB
        INCREMENT BY 1 --1씩 증가
        START WITH 10  --시작번호는 10
        MAXVALUE 20    --20까지 번호 받음
        MINVALUE 0
        NOCYCLE;        --20까지 도달하면 중단
        
SELECT * FROM USER_SEQUENCES;

CREATE TABLE TEST_SQE(
ID NUMBER PRIMARY KEY,
NAME VARCHAR2(10),
CLASS VARCHAR2(50));
--시퀀스 활용
INSERT INTO TEST_SQE(ID,NAME, CLASS)
VALUES(SEQ_DB.NEXTVAL,'김희은','스프링');
SELECT * FROM TEST_SQE;