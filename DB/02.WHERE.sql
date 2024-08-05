--CHAPTER 02. WHERE

--WHERE�����
/*SELECT ��ȸ �÷���1,.....
 FROM ���̺��
 WHERE ���� ����*/
 --�������̺��� ����ID�� 105�� FIRST,LAST NAME
 SELECT FIRST_NAME, LAST_NAME,EMPLOYEE_ID
 FROM EMPLOYEES
 WHERE EMPLOYEE_ID=105;
 
 
 -- �μ����̺��� �Ŵ��� ���̵� 100�� �μ��̸��� �μ� ���̵� ���
 SELECT MANAGER_ID,DEPARTMENT_ID
 FROM DEPARTMENTS
 WHERE DEPARTMENT_ID=100;
 
 
 --�������̺��� �޿� 9000�� �������̵�, �����̸�, �޿�
 SELECT EMPLOYEE_ID, FIRST_NAME, SALARY
 FROM EMPLOYEES
 WHERE SALARY=9000;


/*������
1)���������<+,-,*,/> SELECT A*2 FROM~
2)�񱳿����� (>,>=,<,<=)
*/

--�������̺��� �޿��� 5000������ ���� �̸��� �޿����� ���
SELECT FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY<=5000;

--�������̺��� ������ 50000������ �������� �̸��� ���� ���
SELECT FIRST_NAME, SALARY*12 AS "����"
FROM EMPLOYEES
WHERE (SALARY*12)<=50000;

--��񱳿�����(!=,<>,^=, NOT

-- �������̺��� �������̵� IT_PR0G�� �ƴ� ������ �̸��� �������̵� ���
SELECT FIRST_NAME, JOB_ID
FROM EMPLOYEES
WHERE JOB_ID !='IT_PROG';

/*�� ������ AND OR
�켱������ ���� ����� �ٸ�
*/

--�������̺��� �μ����̵� 90�̰� �޿��� 5000�� ������ �������̵�� �����̸� 
SELECT EMPLOYEE_ID, FIRST_NAME
FROM EMPLOYEES
WHERE DEPARTMENT_ID=90 
AND SALARY>=5000;


--�������̺��� �μ����̵� 100�̰ų� �Ի����� 06�� 02 02 ���� �Ի��� ���� �̸�,�Ի��� ����

SELECT FIRST_NAME, HIRE_DATE
FROM EMPLOYEES 
WHERE HIRE_DATE > '060202'
OR DEPARTMENT_ID=100;

--�������̺꿡�� �μ�ID�� 100�̰ų� 90�� ������ ���̵� 101�� ������ ���̵� �̸� ���� ���
--ANNSAL�̶�� ��Ī���� ������

SELECT FIRST_NAME, SALARY*12 AS "����"
FROM EMPLOYEES
WHERE EMPLOYEE_ID=101
AND (DEPARTMENT_ID=100 
OR DEPARTMENT_ID=90);
/*WHERE DEPARTMENT_ID=100 
  OR DEPARTMENT_ID=90
  AND EMPLOYEE_ID=101*/
/*
NULL������
IS NULL: �� �� ��ȸ  =>A=NULL=>FALSE
IS NOT NULL: ���� �ƴѰ� ��ȸ*/

--�������̺��� ���ʽ��� �ִ� ������ �̸��� ���ʽ� ���� ���(NULL�� ����)
SELECT FIRST_NAME, COMMISSION_PCT
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL;

SELECT FIRST_NAME,DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NULL;

/*SQL������
IN:Ư�� �÷��� ���Ե� ������ ������ ��ȸ
NOT IN:���ǿ� �ش����� �ʴ� ������ ���

/ BETWEEN A AND B:���� �� ������ ��ȸ A:�ּҰ�, B:�ִ밪  �̻�����
/ LIKE*/
--�������̺��� �μ����̵� 30/50/90 �� ��� ���� ���
SELECT*
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 50 
OR DEPARTMENT_ID = 30 
OR DEPARTMENT_ID = 90;

SELECT*
FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (30,50,90);

--�������̺��� �Ŵ������̵� 100,102,103 �����̸�,�Ŵ������̵����
SELECT FIRST_NAME, MANAGER_ID
FROM EMPLOYEES
WHERE MANAGER_ID IN (100,102,103);
--IN�� NULL���Խ� NULL���� ��Ű�� ���

--100,102,121�� �ƴ� ���� �̸� �Ŵ������̵� ���
SELECT FIRST_NAME, MANAGER_ID
FROM EMPLOYEES
WHERE MANAGER_ID NOT IN (100,120,121);

--�������̺� �������̵� AD_VP ST_MAN�� ������ �̸��� �����������̵� ���
SELECT FIRST_NAME, JOB_ID
FROM EMPLOYEES
WHERE JOB_ID IN('AD_VP','ST_MAN');

--�������̺� �Ŵ��� ���̵� 145,146,147,148,149�� �ƴ� ������ �̸��� �Ŵ������̵� ���
SELECT FIRST_NAME, MANAGER_ID
FROM EMPLOYEES
WHERE MANAGER_ID NOT IN  (145,146,147,148,149);

--�������̺� �޿� 10000�̻� 20000���� �����̸� �޿�
SELECT FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY BETWEEN 10000 AND 20000;

--�������̺� 05�� �Ի� ���� �̸�/�Ի���
SELECT FIRST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN '050101' AND '051231';


/*
LIKE: �Ϻ� ���ڿ��� ���Ե� �����͸� ��ȸ�Ҷ� ���
%:��� ���� ������
_:�Ѱ��� ����*/

--�������̺��� �ڵ��� ��ȣ�� 650���� �����ϴ� ������ �̸��� �ڵ��� ��ȣ ���

SELECT FIRST_NAME,PHONE_NUMBER
FROM EMPLOYEES
WHERE PHONE_NUMBER LIKE '650%';

--�������̺��� �̸��� S�� �����ϰ�n���� ������ ���� �̸�ã��
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'S%n';

--�������̺��� �̸��� it���� ������ �� 4������ �����̸�
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '__it';

--�������̺��� �̸� �ι�°���ڰ� e�� �����̸�
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '_e%';

--�������̺��� 01���� �Ի��� ������ �̸��� �Ի糯¥
SELECT FIRST_NAME,HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE LIKE '___01%'--����� 3��







