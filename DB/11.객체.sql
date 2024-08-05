/*��ü(object):       
��(view): �ϳ� �̻��� ���̺��� ���� ������ ���� ��������� ���� ���̺�
    ����: ����: ���ֻ���ϴ� select ���� ����
         ���ȼ�:  Ư�� �����͸� �����Ű�� ����
    
    �� ����: CREATE VIEW �̸�
            AS ������ SLECET �� */
            
--������� ����(�������̵�, �̸�,�̸���, �������̵�, �޿�
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL,JOB_ID, SALARY
FROM EMPLOYEES
WHERE EMPLOYEE_ID=100;

--�� ����
CREATE VIEW VIEW_EMP100
AS SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL,JOB_ID, SALARY
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID=100;
    
SELECT * FROM VIEW_EMP100;

/*������: Ư�� ��Ģ�� �´� ���� ���� ����, ���ǥ ó�� ���� ��ȣ ��� ����
    �ַ� PK�÷����� ���ϰ� ���鶧 Ȱ��
    �����:
            �������̸�.CURRVAL:������ ������ȣ
            �������̸�. NEXTVAL:������ȣ ��ȯ*/
            
CREATE SEQUENCE SEQ_DB
        INCREMENT BY 1 --1�� ����
        START WITH 10  --���۹�ȣ�� 10
        MAXVALUE 20    --20���� ��ȣ ����
        MINVALUE 0
        NOCYCLE;        --20���� �����ϸ� �ߴ�
        
SELECT * FROM USER_SEQUENCES;

CREATE TABLE TEST_SQE(
ID NUMBER PRIMARY KEY,
NAME VARCHAR2(10),
CLASS VARCHAR2(50));
--������ Ȱ��
INSERT INTO TEST_SQE(ID,NAME, CLASS)
VALUES(SEQ_DB.NEXTVAL,'������','������');
SELECT * FROM TEST_SQE;