--CHAPTER 07.DML(DATA MANIPULATION LANGUAGE)
/* DML:������ ���۾�, ������ ��ȸ, �߰�, ����, �����Ҷ� ��� ���Ǿ�=>����, �Է�, ����

SELECT INTO ���̺�� (�÷�,�÷�..) OR ����
    VALUES(��,��,...): ������ ��ȸ, �÷��� ���� ������ ���ƾ���, �÷������� ��� �÷��� �Է��̶� ����
/ INSERT: ������ �߰�
/ UPDATE: ������ ����
/ DELECT: ������ ����
*/

SELECT * FROM USE_JOIN;
--1. ���� �ֱ�
INSERT INTO USE_JOIN(ID,PW,NAME,JOIN_DATE,AGE,PHONE,EMAIL)
VALUES('USE01','12345','������',SYSDATE,27,'010-3036-8924','kim3he@naver,com');
SELECT * FROM USE_JOIN;

--2.¦�� ���� �ֱ� NULL���ֱ�
INSERT INTO USE_JOIN(ID,PW,NAME,JOIN_DATE,AGE,PHONE,EMAIL)
VALUES('USE02','11111','������',SYSDATE,27,NULL,'');
SELECT * FROM USE_JOIN;

--3.���� ģ���� ������ �ֱ�(�̸���,��ȭ��ȣ NULL)
--NULL���� �Ͻ������� �Է�
INSERT INTO USE_JOIN(ID,PW,NAME,JOIN_DATE,AGE)
VALUES('USE03','11112','������',SYSDATE,22);
SELECT * FROM USE_JOIN;



-- ���̺� ������ ���� ����Ʈ 

-- 1. �÷�����Ʈ�� �Է� ���� ������ �ٸ� ���
INSERT INTO USE_JOIN (ID, PW, NAME, JOINDATE, AGE, TEL, EMAIL)
 VALUES ('ȣ�ξƺ�', '33333', '�ں���' , SYSDATE, 29, '010-111-1111', 'HODO@GMAIL.COM', 'N');
 
--  SQL ����: ORA-00913: too many values 
--> �÷� ����Ʈ�� ������ �Է� �� ������ ��ġ�ؾ� �Ѵ�!

-- 2. �ĺ��ڿ� NULL�� �Է��� ���
INSERT INTO USE_JOIN (ID, PW, NAME, JOINDATE, AGE, TEL, EMAIL)
 VALUES (NULL, '33333', '�ں���' , SYSDATE, 29, '010-111-1111', 'HODO@GMAIL.COM');

-- ORA-01400: cannot insert NULL into ("HR"."SMHRD_JOIN"."ID")
--> �÷��� ���� �������ǿ� �°� �ۼ� �ؾ��� (�ĺ��ڴ� NOT NULL + UNIQUE �ߺ��Ұ�)

-- 3. NOT NULL�� �÷��� NULL�� ���� ���
INSERT INTO USE_JOIN (ID, PW, NAME, JOINDATE, AGE, TEL, EMAIL)
 VALUES ('ȣ�ξƺ�', '33333', NULL , SYSDATE, 29, '010-111-1111', 'HODO@GMAIL.COM');

-- ORA-01400: cannot insert NULL into ("HR"."SMHRD_JOIN"."NAME")
--> �÷��� ���� �������ǿ� �°� �ۼ� �ؾ��� ( NOT NULL ���� )

-- 4. �ڷ����� ���� �ʰ� �Է� ���� ���� ���
INSERT INTO USE_JOIN (ID, PW, NAME, JOINDATE, AGE, TEL, EMAIL)
 VALUES ('ȣ�ξƺ�', '33333', '�ں���' , SYSDATE, '29��', '010-111-1111', 'HODO@GMAIL.COM');

-- ORA-01722: invalid number
--> �÷��� ���� �ڷ����� �°� �ۼ��� �Ǿ� �Ѵ�. (AGE�� ������ �ڷ���)

-- 5. �ĺ��� �÷��� �ߺ� ���� ���� ���� ���
INSERT INTO USE_JOIN (ID, PW, NAME, JOINDATE, AGE, TEL, EMAIL)
 VALUES ('ȣ�ξƺ�', '33333', '�ں���' , SYSDATE, 29, '010-111-1111', 'HODO@GMAIL.COM');
 
-- unique constraint (HR.SYS_C007110) violated
--> ���� �� ���¿��� �ѹ��� ������ �Ǹ� �ĺ��ڰ� ���� �ߺ��� �Ǽ� ������ ��

SELECT * FROM USE_JOIN  ;


--�÷�����Ʈ ���� �ʰ� INSERT=> �÷������� ���� ���� ����

INSERT INTO USE_JOIN
VALUES('USE04', '33333', '�ں���' , SYSDATE, 29, '010-111-1111', 'HODO@GMAIL.COM');
SELECT * FROM USE_JOIN  ;


--�ǽ�

CREATE TABLE USE_SONGLIST(
NO NUMBER(3)PRIMARY KEY,
TITLE VARCHAR2(20) NOT NULL,
SINGER VARCHAR2(20),
GENDER VARCHAR2(10) CHECK(GENDER='��' OR GENDER='��'));
-- CHECK (GENDER IN ('��' ,'��'))
INSERT INTO USE_SONGLIST
VALUES( 1, '�߻�ȭ','��ȿ��','��');
SELECT* FROM USE_SONGLIST;

/*CREATE TABLE USE_SONGLIST(
NO NUMBER(3),
TITLE VARCHAR2(20),
SINGER VARCHAR2(20),
GENDER VARCHAR2(10));

ALTER TABLE USE_SONGLIST ADD CONSTRAINT NO_PK PRIMARY KEY;
ALTER TABLE USE_SONGLIST ADD CONSTRAINT GENDER_CK CHECK(GENDER IN ('��' ,'��'));
*/

--UPDATE :���̺� ������ ����
/*UPDATE ���̺��
  SET ���� �÷�= ������ ��....
  WHERE ������ ����  =>WHERE ������ ���̺� ��� ���� �����
  ���� �ɶ��� PK���� �ɾ����*/
  
  SELECT * FROM USE_JOIN;
  
  UPDATE USE_JOIN
  SET ID='USE04'
  WHERE ID='USER04';
  
  SELECT * FROM USE_JOIN;
  
  --DELETE :������ ����==> ROLLBACK ��� ����
  /* DELETE FROM ���̺��
     WHERE ���� ��� ����;
     ** WHERE ������ ������ ���̺� ��� ������ ������ */
  
--28�� �ʰ��� ȸ���� ������ ����
DELETE FROM USE_JOIN
WHERE AGE>28;


