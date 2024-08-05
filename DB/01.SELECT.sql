--CHAPTER 01. SELECT
/*
SELCET�� �⺻��� ���
2.SELECT ��ȸ�� �÷���1, �÷���2,....,
1.FROM ��ȸ�� ���̺� �̸� 
*/
select first_name from employees;

--���� ũ��: ����>ȯ�漳��>�ڵ�������>�۲�
--�ּ� ���� �� :                        >PL/SQL�ּ� 
/* ������ �ּ�
SQL ��ҹ��� ���о���
���� �ٹٲ� �������
���峡 ; �ݵ�� �ʿ�
CTRL+ ENTER,F9=�����ư*/

SELECT FRIST_NAME
  FROM EMPLOYEES;
  
--���� ���̺��� ������ �̸��� ���� ���
    
SELECT EMAIL
  FROM EMPLOYEES;
  
--�������̺��� ���� ID,FIRST_NAME, PHONE_NUMBER,SALART(�޿�) �������
SELECT EMPLOYEE_ID, FIRST_NAME, PHONE_NUMBER, SALARY
  FROM EMPLOYEES;

-- *: select ���� ���� '�ƽ�Ÿ����ũ'=> ���ϵ�ī��=>��ü�� �ǹ�

SELECT *
  FROM EMPLOYEES; --���̺� ��ü �� ȣ��
  
  --�μ����̺� ��ü ������ ����ϰ� ���� ����?
  SELECT *
    FROM DEPARTMENTS;
    
--�ǽ�1) �������̺��� ����ID/ FIRST_NAME, �޴���ID
SELECT EMPLOYEE_ID, FIRST_NAME, MANAGER_ID
  FROM EMPLOYEES;

--�ǽ�2) �μ����̺� �μ�ID/�μ���/��ġID
SELECT DEPARTMENT_ID,DEPARTMENT_NAME,LOCATION_ID
  FROM DEPARTMENTS;
  
--�������̺��� ������ �μ� id
SELECT DEPARTMENT_ID
  FROM EMPLOYEES;
  
/*DISTINCT: ������ �ߺ� ����=> 1���� �÷��� �ۼ�
SELECT [DISTINCT/ALL] �÷���
FROM ���̺��̸� */

SELECT DISTINCT DEPARTMENT_ID
  FROM EMPLOYEES;
  

  --�������̺����� JOB_ID �ߺ������� ���
  SELECT DISTINCT JOB_ID
    FROM EMPLOYEES;
    
-- �������̺��� JOB_ID �� �μ�_ID �ߺ�����
SELECT DISTINCT JOB_ID,DEPARTMENT_ID
 FROM EMPLOYEES;
/*DISTINCT�ڿ� 2�� �̻��� �÷��� ���ԵǸ� 
�����÷��� �ߺ��� �־ �ٸ����� �ٸ��� �ٸ��ٰ� ���
TIP: �÷��� ���� ���� ����(+,-,*,/)*/

--�������̺��� FIRST_NAME , �޿� ���
SELECT FIRST_NAME,SALARY
 FROM EMPLOYEES;
 
 --���� �̸�/�޿��� ������ ������ ���
 SELECT  FIRST_NAME,SALARY, SALARY*12
 FROM EMPLOYEES;
 
 
/*��Ī ����ϱ� ALIAS:�Ѻп� ���� ���� ����
 --ASŰ���� ���
 SELECT �÷� ��Ī     SELECT �÷� "��Ī"      SELECT �÷� AS ��Ī     SELECT �÷� AS "��Ī"
 ��Ī���� Ư������, ���� ���� ����
 */
 SELECT  FIRST_NAME AS "�̸�",SALARY*12 AS "����"
  FROM EMPLOYEES;
  
  --�������̺��� ������ �̸��� �Ի���(HIRE_DATE)����,�ϻ��� ������  ���
     --SELECT FIRST_NAME ,HIRE_DATE , HIRE_DATE+1 AS "�Ի��ϴ�����"
     --SELECT FIRST_NAME ,HIRE_DATE , HIRE_DATE+1 AS �Ի��ϴ����� --���帹�� ���
     --SELECT FIRST_NAME ,HIRE_DATE , HIRE_DATE+1 "�Ի��ϴ�����"
        SELECT FIRST_NAME ,HIRE_DATE , HIRE_DATE+1 �Ի��ϴ�����
     FROM EMPLOYEES;
     
     
     
/*ASC: ��������(�⺻����),  DESC:��������
ORDER BY��: Ư�� Į���� �������� ���ĵ� ����, SQL�������� ���� */

--DESC EMPLOYEES=> DESCRTS:���̺� ���� Ȯ���ϴ� ��ɾ�

--�������̺��� ��� ������ ������ ����ϴµ� �޿����� ��������
SELECT *
FROM EMPLOYEES 
ORDER BY SALARY ASC;

--�������̺� �ֱ� �Ի糯¥���� �̸�, �Ի糯¥
SELECT FIRST_NAME, HIRE_DATE
FROM EMPLOYEES
ORDER BY HIRE_DATE ASC;

--�������̺� ����id,�μ�id,�̸�,�޿� �� ����
SELECT EMPLOYEE_ID, DEPARTMENT_ID, FIRST_NAME, SALARY
FROM EMPLOYEES
ORDER BY DEPARTMENT_ID ASC,SALARY DESC;
--�μ��� ���������ϰ�, �μ������� �޿��� ���������� ���

--NULL��: ������ ���� ������ ����ִ� ����, ���� ���������ʰų� �������� ����
--����0, �� ���ڿ��� NULL���� �ƴ�=> NULL�� �����ϸ� ����� NULL/ ���ϸ� ����� FALSE

--���� ���̺��� ����id,���ʽ�(COMMISSION_PCT)/ ���ʽ� *2 ���
SELECT EMPLOYEE_ID, COMMISSION_PCT, COMMISSION_PCT*2 AS "UP_BONUS"
FROM EMPLOYEES;
/*���ʽ� ���� �������� �ʱ� ������(������ ����ִ� ����) ������ �Ұ����� null������ ���*/


