--CHAPTER 09.DCL(Dat Control Language) 


/*db�� �����ϰų� ��ü�� ���ϴ� �ִ� ����
1.grant :���� �ο�
2.erevoke;���� ȸ��
3.role:���� ��� ���, ����� ������ ���� ��� ���� 
    -����: CONNECT:DB ���ӿ� �ʿ��� ���� ����
          RESOURCE: ���̺�,������ �� ��ü ���� ���� ����
          DBA: DB�� ������ ��κ��� �ý��� ���� ����( �Ժη� ���X)
        =>�������� ���ϴ� �ִ� ��� GRANT CONNECT , RESOURCE TO USER_NAME;
        
�����: user: db�� �����Ͽ� �����͸� �����ϴ� ���� �����
user ���� 1)create user ����� �̸� 
         2)identified by �н�����
         create user dcltest identified by 12345;
         
���� �ο� grant ���� to user;
���� ȸ�� revoke ���� from user;
*/

CREATE TABLE TEST_TB(
ID VARCHAR2(10));
--ORA-01031: insufficient privileges: ���� �����   
SELECT * FROM TEST_TB;

--�ٸ� USER ������ ���� ����=> ��Ű��
--��ü����: Ư�� ������� ��ä�� ���� �ο�, ����ڰ� SELECT OR UPDATE��� DML�۾��� ������
/*GRANT �ý��� ���� =>SELECT, UPDATE...
  ON ��Ű��. ��ü�̸� 
  TO  USER_NAME;*/
SELECT * FROM HR.EMPLOYEES;

UPDATE HR.EMPLOYEES
SET FIRST_NAME='��', LAST_NAME='����'
WHERE EMPLOYEE_ID=100;

SELECT * FROM EMPLOYEES;
COMMIT;
