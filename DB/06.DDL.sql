--CHAPTER O6.DDL(Data Difinition Language)
/*DDL:������ ���Ǿ�, ����� ��ü ����, �������
CREATE:��ü ���� ��ɾ�
ALTER: ��ü ���� ��ɾ�
RENAME: ��ü �̸� ����
TRUNCATE:������ ����
DROP: ��ü ����

VARCHAR2(N):������ ������, ũ��n��ŭ
NUMBER(P,S): ������ ,P�ڸ���ŭ �Է�, S�� �Ҽ���, ����,�Ǽ� ��� ���� 
    �Ұ�ȣ ������ �ִ밪 38ũ��
DATE: ���� ��¥ �Է�*/

--�������������� TEST_�������������̺� ����  SHIFT+F4:���̺� ����Ȯ��
CREATE TABLE TEST_����������(�л�ID VARCHAR2(9), �л��̸� VARCHAR2(50),�Ҽӹ� VARCHAR2(5));

SELECT * FROM "TEST_����������";


--����ǥ���� TEST_����ǥ���̺� ����
CREATE TABLE TEST_����ǥ(�л�ID VARCHAR2(9), ���� VARCHAR2(30), ���� NUMBER);

SELECT * FROM "TEST_����ǥ";

--�ǽ�1
CREATE TABLE A_LOGIN(USER_ID VARCHAR2(20),USER_PASSWORDS VARCHAR2(20), USER_EMAIL VARCHAR2(20), USER_NAME VARCHAR2(20));
SELECT * FROM A_LOGIN;

--��������: �Է°����� �����͸� �������� ����, ��Ȯ�� ����, �����Ŀ� ���� ������ ����,���� ���� ����
/*PRIMARY KEY(PK):Ű��Ű, NOT NULL+ UNIOUE(�ߺ��Ұ�)
UNIQUE KEY(UK):����Ű  NULL ����, �ߺ� �Ұ�
NOT NULL: NULL�� �Ұ� , �� ������ �ʿ��� ���� ���
CHECK: ������ �����͸� �Է�
FORIGN KEY(FK):�ܷ�Ű, �� ���̺� ���� Ű

�������� �Ŵ� ���
ALTER TABLE ���̺�� ADD CONSTRAINT ���������̸� ����(�÷��̸�);
*/

--PK ���� ���� ����
SELECT * FROM A_LOGIN;
ALTER TABLE A_LOGIN ADD CONSTRAINT A_ID_PK PRIMARY KEY(USER_ID);

--UK���� ���� ����
ALTER TABLE A_LOGIN ADD CONSTRAINT A_EMAIL_UK UNIQUE(USER_EMAIL);

--CHECK���� ���� ����
ALTER TABLE A_LOGIN ADD CONSTRAINT PW_CHECK CHECK(LENGTH(USER_PASSWORDS)>3);

--FK���� ���� ����
--ALTER TABLE ���̺�� ADD CONSTRAINT ���������̸� ��������(�÷�) REFERENCES ���������̺��(���� �÷�);
ALTER TABLE TEST_����ǥ ADD CONSTRAINT �л�ID_F FOREIGN KEY(�л�ID)
REFERENCES ����������(�л�ID);

--�������� ���� ���
--ALTER TABLE ���̹��� MODIFY �÷��� �ٲ���������;
ALTER TABLE A_LOGIN MODIFY USER_NAME NOT NULL;

--�������� ����
--ALTER TABLE ���̹��� DROP CONSTRAINT ���������̸�;
ALTER TABLE A_LOGIN DROP CONSTRAINT PW_CHECK;

/*������ ���Ἲ:������ ���� ����, ��Ȯ�� ��ȿ�ϰ� ������ ������

���Ἲ ���� ����
1. ��ü ���Ἲ: �⺻Ű ����, �ߺ����� �������� �ʵ��� ����
2. ���� ���Ἲ: �� �Է�,����,���� �� �����͵��� ��Ȯ�ϰ� ����, ���������� ���̺��� �����Ͱ� �ϰ��� �� ����*/


CREATE TABLE TB_TEST1(
PK�׽�Ʈ NUMBER PRIMARY KEY,
UK�׽�Ʈ NUMBER UNIQUE,
NL�׽�Ʈ NUMBER NOT NULL,
CK�׽�Ʈ NUMBER CHECK(LENGTH(CK�׽�Ʈ)>5));

CREATE TABLE TB_TEST2(
PK�׽�Ʈ NUMBER ,
UK�׽�Ʈ NUMBER ,
NL�׽�Ʈ NUMBER NOT NULL,
CK�׽�Ʈ NUMBER,
FK�׽�Ʈ NUMBER,
CONSTRAINT PK�׽�Ʈ_PK PRIMARY KEY (PK�׽�Ʈ),
CONSTRAINT UK�׽�Ʈ_UK UNIQUE(UK�׽�Ʈ),
CONSTRAINT CK�׽�Ʈ_CK CHECK (CK�׽�Ʈ>0),
CONSTRAINT FK�׽�Ʈ_FK FOREIGN KEY(FK�׽�Ʈ) REFERENCES TB_TEST1(PK�׽�Ʈ)
); 


--�÷��߰��ϱ� ALTER TABLE ���̺�� ADD �÷��� �ڷ���(ũ��)
ALTER TABLE A_LOGIN ADD PHONE_NUMBER VARCHAR2(10);

--�÷� �̸� ���� ALTER TABLE ���̺�� RENAME COLUMN �����÷��̸� TO �ٲ� �÷��̸�;
ALTER TABLE A_LOGIN RENAME COLUMN PHONE_NUMBER TO TEL;

--�÷� �ڷ��� ���� ALTER TABLE ���̺�� MODIFIY �÷��� �ٲ���������(����)
ALTER TABLE A_LOGIN MODIFY TEL VARCHAR(20);

--Ư�� �÷� �����ϱ� ALTER TABLE ���̺�� DROP COLUMN �÷���;
ALTER TABLE A_LOGIN DROP COLUMN TEL;

--���̺� �̸� ���� REANEM �������̺�� TO �ٲ����̺��
RENAME A_LOGIN TO USER_LOGIN;
SELECT * FROM A_LOGIN;
SELECT * FROM USER_LOGIN;

--���̺� ���� 
DROP TABLE TEST_����������;
SELECT * FROM TEST_����������;

--���̺� ����
CREATE TABLE DROP_����ǥ AS SELECT * FROM ����ǥ;
SELECT* FROM DROP_����ǥ;

DELETE  DROP_����ǥ; --��������
ROLLBACK; --�ǵ����� ��ɾ�
SELECT* FROM DROP_����ǥ;

--TRUNCATE: ������ ��������
TRUNCATE TABLE DROP_����ǥ; --�ǵ��� �� ����
ROLLBACK;
SELECT* FROM DROP_����ǥ;

--�ǽ�2
CREATE TABLE USE_JOIN( 
ID VARCHAR2(20) PRIMARY KEY,
PW VARCHAR2(20) NOT NULL,
NAME VARCHAR2(10) NOT NULL,
JOIN_DATE DATE,
AGE NUMBER(3),
PHONE VARCHAR2(20),
EMAIL VARCHAR2(50) UNIQUE
);
