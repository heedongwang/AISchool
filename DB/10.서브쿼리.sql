--CHAPTER 10.��������
/*��������: SQL���� �����ϴµ� �ʿ��� �����͸� �߰��� ��ȸ�ϱ� ���� ���ο��� ����ϴ� SELCET���� �ǹ� 
          ���� ������ ���ǽĿ� ���� ��
          Ư¡: �����ڿ� ���� �� �Ǵ� ��ȸ ����� �����ʿ� ���̸� ()�� ���� �ÿ�
               SELECT ���� ����� �÷��� ���������� �� ���� ���� �ڷ����� ������ �����ؾ� �Ѵ�.
               ���� ������ �ִ� SELECT���� ��� �� ���� ���������� �����ڿ� ȣȯ�����ؾ��Ѵ�.
                �ϳ��� ������ ������ ������ �������̸� ���������� ����൵ �Ѱ�
                �����ڿ��Բ� ��ȣ�ۿ��ϴ� ��Ŀ� ���� ������/������ ���������� ����
                
������ ��������: ���� ����� �ϳ��� ������ ������ ��������=> =,>,>=,<,<=,<>,!=.^=
    
��������: ���������� ������� ����ϴ� ���*/

--�������̺��� FIRST_NAME�� Jack�� �޿�����
SELECT  FIRST_NAME,SALARY
FROM EMPLOYEES
WHERE FIRST_NAME='Jack';

--jack�̶�� ������ �޿����� ���� ������ �̸��� �޿��� ���
SELECT FIRST_NAME,SALARY
FROM EMPLOYEES
WHERE SALARY<(SELECT SALARY
FROM EMPLOYEES
WHERE FIRST_NAME='Jack')
ORDER BY SALARY ASC;

--JAMES�� �޿����� ���� ������ �̸��� �޿� ��ȸ=> JAMES �θ�, ���� �߻�

SELECT SALARY,LAST_NAME,FIRST_NAME
FROM EMPLOYEES 
WHERE FIRST_NAME='James';

SELECT FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY<(
SELECT SALARY
FROM EMPLOYEES 
WHERE FIRST_NAME='James');
/*ORA-01427: single-row subquery returns more than one row
    ������ ���������� �ϳ��� �ุ ��� �Ҽ� ����*/
    

--Nancy �Ի��� ��ȸ
SELECT FIRST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE FIRST_NAME='Nancy';

--�������̺��� Nancy ���� ���� �Ի��� ������ �̸��� �Ի����� ��ȸ
SELECT FIRST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE<
(SELECT HIRE_DATE
FROM EMPLOYEES
WHERE FIRST_NAME='Nancy');

--���� ��� �޿�
SELECT ROUND(AVG(SALARY) ,2)
FROM EMPLOYEES;

--������ ��� �޿����� ���� �޿��� ���� ������ �̸��� �޿� ��ȸ
SELECT FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES)
ORDER BY SALARY;


/*������ ��������: ������ ���� �������� ��������
    ������: IN:���������� �����Ͱ� �Ѱ��� ��ġ�ϸ� TRUE(=OR) =>IN(��������)
           ANY:���������� ���ǽ��� �����ϴ� ����� �ϳ� �̻��̸� TRUE=> �񱳿����� ANY(��������)
           ALL:���������� ���ǽ��� ��� �����ϸ� TRUE => �񱳿����� ALL(��������)
           EXISTS:���� �������� �����ϴ� �� ���� Ȯ��( ���� �Ѱ��̻��̸� TURE)=> EXISTS(��������)
               */
SELECT* FROM EMPLOYEES; 

--�� �μ��� �ְ� �޿� ���� ��� (GROUP BY),(�μ�ID,FIRST_NAME,�޿�

SELECT MAX(SALARY)
FROM EMPLOYEES
GROUP BY (DEPARTMENT_ID);

SELECT DEPARTMENT_ID, FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY IN (SELECT MAX(SALARY)
                FROM EMPLOYEES
                GROUP BY DEPARTMENT_ID);
--�μ��� �ְ�޿��� ���� �޿��� ������ ��� ������ ��µȰ� => ����� �����ϴ� ������ ��ġ

--ANY �̿�=> IN�� ���� �����

SELECT DEPARTMENT_ID, FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY =ANY (SELECT MAX(SALARY)
                FROM EMPLOYEES
                GROUP BY DEPARTMENT_ID);
                
SELECT DEPARTMENT_ID, FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY >=ANY (SELECT MAX(SALARY)
                FROM EMPLOYEES
                GROUP BY DEPARTMENT_ID);
-->���������� �ּҰ����� ū ���� ������ ���

--ALL���: ���������� ���� ��� �����ؾ���
SELECT DEPARTMENT_ID, FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY =ALL (SELECT MAX(SALARY)
                FROM EMPLOYEES
                GROUP BY DEPARTMENT_ID);


SELECT DEPARTMENT_ID, FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY >=ALL (SELECT MAX(SALARY)
                FROM EMPLOYEES
                GROUP BY DEPARTMENT_ID);
--���������� ���� �ִ�� ����� ũ�ų� ���� �� ���

--EXISTS
SELECT DEPARTMENT_ID, FIRST_NAME
FROM EMPLOYEES
WHERE EXISTS (SELECT FIRST_NAME, DEPARTMENT_ID
                FROM EMPLOYEES
                WHERE DEPARTMENT_ID =110;); 