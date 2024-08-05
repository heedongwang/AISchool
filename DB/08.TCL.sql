--CHAPTER 08.TCL(Transction Control Language)

/*트랜잭션: DB상태를 변화시키기 위한 최소수행단위, 업무처리 최소 수행단위
    특성: 1)Automicity(원자성):ALL or Nothing ,모두 실행 또는 전혀 실행안함
         2)Consistency(일관성):일관성 있는 상태로 유지
         3)Isolation(고립성): 실행시 다른 트랜잭션의 영향 안받음, 동시 시행안함
         4)Durability(지속성): 성공한 트랜젝션은 영원히 반영

    명령어 1)COMMIT:DB에 영구적 저장, 마지막 COMMIT시점 이후 저장
          2)ROLLBACK:트랜젝션 취소, 마지막 COMMIT 직전 복구
          3)SAVEPOINT: 트랜젝션 작게 분할해 저장*/
          
--테이블 복사  ,제약조건은 복사 안됨
SELECT * FROM TCL_EMP;

CREATE TABLE TCL_EMP AS SELECT * FROM EMPLOYEES;

DELETE FROM TCL_EMP WHERE EMPLOYEE_ID=100;
ROLLBACK;

COMMIT; --영구저장
ROLLBACK;HO


DELETE FROM TCLE_EMP WHERE EMPLOYEE_IF-101;

CREATE TABLE TCL_DEMP AS SELECT * FROM EMPLOYEES;
