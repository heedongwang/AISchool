--CHAPTER 05. JOIN
/*JOIN: ���� ���̺��� �ʿ��� �����͸� �ѹ��� �������� ���
�� ����(NON EQUI JOIN):�ΰ��� ���̺��� ��Ȯ�ϰ� ��ġ���� �ʴ� ��� ���(!=)
=> (<,>,BETWEEN....)
� ����(EQUI JOIN):�� ���̺� ��Ȯ�� ��ġ�ϸ� ���
        ������� ���(=)
        
����� select ���̺�1.�÷���1, ���̺�2,�÷���2..
        from ���̺�1,���̺�2
        where ���̺�1.�÷���=���̺�2.�÷���;*/
        
        
SELECT * FROM ����������;

SELECT ����������.�л�ID,����������.�л��̸�, ����ǥ.����, ����ǥ.����
FROM ����������, ����ǥ
WHERE ����������.�л�ID=����ǥ.�л�ID;


--������ �������̵�� first_name, �μ��̸������� ���
SELECT ��.EMPLOYEE_ID, ��.FIRST_NAME,����.DEPARTMENT_NAME
FROM EMPLOYEES����, DEPARTMENTS����
WHERE ��.DEPARTMENT_ID= ��.DEPARTMENT_ID;

SELECT A.�л�ID,A.�л��̸�, B.����, B.����
FROM ���������� A, ����ǥ B
WHERE A.�л�ID=B.�л�ID;

--�������̵� 100�� ������ FIRST_NAME,�μ��̸� ������
SELECT EMPLOYEES.FIRST_NAME, DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES, DEPARTMENTS
WHERE EMPLOYEES.DEPARTMENT_ID= DEPARTMENTS.DEPARTMENT_ID AND EMPLOYEE_ID=100;

SELECT E. EMPLOYEE_ID,E.FIRST_NAME, D.DEPARTMENT_NAME
FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEPARTMENT_ID= D.DEPARTMENT_ID AND E.EMPLOYEE_ID=100;



--ANSI ���ι��� :�̱� ǥ����ȸ���� ���� DBMS ����
/*INNER JOIN :���� ���� , ���� ���ǿ��� ������ ���� �ִ� �ุ ��ȯ=> ����ΰ� ����
    3.SELECT
    1.FROM ���̺�1 INNER JOIN ���̺�2
                    ON (���̺�1.�ä�=���̺�2=�÷�)
    2.WHERE �Ϲ� ������*/


--�������̺��� �������̵�, �μ����̵�/ �μ����̺��� �μ��̸� ���
SELECT EMPLOYEES.EMPLOYEE_ID,EMPLOYEES.DEPARTMENT_ID, DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES INNER JOIN DEPARTMENTS
ON EMPLOYEES.DEPARTMENT_ID=DEPARTMENTS.DEPARTMENT_ID;

SELECT e.EMPLOYEE_ID,e.DEPARTMENT_ID, d.DEPARTMENT_NAME
FROM EMPLOYEES e INNER JOIN DEPARTMENTS d
ON (e.DEPARTMENT_ID=d.DEPARTMENT_ID);

--������ ���̺��� �ܵ��÷��̸� ��θ� ����� �������� but ��� ���� ���� ����
--*��κ�* ���������� pk,fk�� ����� �̷����

--�������̵� ,����̵�, ��Ÿ��Ʋ�� ������ ������� ���
SELECT E.EMPLOYEE_ID, J.JOB_ID, J.JOB_TITLE
FROM EMPLOYEES E INNER JOIN JOBS J
ON (E.JOB_ID=J.JOB_ID); --INNER ��������

/*CROSS JOIN: ���� �������� �����ʰ� ��� ������ ������
=>īƼ�� ��: ��� ����� �� ���*/

--�������̺��� �������̵�, �μ����̵�/ �μ����̺��� �μ��̸� ���
SELECT E.EMPLOYEE_ID,E.DEPARTMENT_ID, D.DEPARTMENT_NAME
FROM EMPLOYEES E CROSS JOIN DEPARTMENTS D ; --CROSS �������� => JOIN�϶� ON ������ INNER / ������ CROSS

/* OUTER JOIN: �ܺ�����, �� ���̺��� ������, ������ NULL���� ���
LEFT: ���� ���̺� ���� => ����Ŭ ����: �����ʿ� +��ȣ
RIGHT: ������ ���̺� ����=> ����Ŭ ����: ���ʿ� +��ȣ
FULL: ���� ��� ����,UNION=FULL OUTER JOIN */

--�� �μ��� �Ŵ����� �μ� �̸��� �Ŵ��� ���̵�� �Ŵ����̸��� ���
SELECT d.department_name, D.MANAGER _ID ,E.FIRST_NAME
FROM DEPARTMENTS D INNER JOIN EMPLOYEES E
ON D.MANAGER_ID= E.EMPLOYEE_ID
--ON (E.DEPARTMENT_ID= D.DEPARTMENT_ID) AND (E.EMPLOYEE_ID=D.MANAGER_ID);


SELECT D.DEPARTMENT_NAME, D.MANAGER _ID , E.FIRST_NAME
FROM EMPLOYEES E , DEPARTMENTS D
WHERE D.MANAGER_ID =E.EMPLOYEE_ID;
