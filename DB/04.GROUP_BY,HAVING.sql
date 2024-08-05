--CHAPTER 04. GROUP BY/ HAVING

/*�����Լ�
1.������ �Լ�: �Է��� �ϳ��� ��� ����� �ϳ��� =>����, ����, ��¥, ��ȯ,NULL, �����Լ�
2.������ �Լ�(�����Լ�): �������� �Է¹޾� �ϳ��� ������ ���
    1)NULL�� ���� 2) �׷�ȭ�� ���Ӿ��ִ� ���¿����� ���
    -���� 1)COUNT():������ ���� ��ȯ    2)SUM()������ �� ��ȯ    3)MAX() �������ִ밪 ��ȯ     4)MIN()�ּҰ� ��ȯ     5)AVG() ��հ� ��ȯ*/
    
--�������̺��� �������̵� ���� ���� ��ȸ
SELECT COUNT(EMPLOYEE_ID)--,EMPLOYEE_ID ���� ���� �� ����ġ( 1/ 107)
FROM EMPLOYEES;
--GORUP BY();  :���̺��� �ϳ��� �׷����� �ν�

--SELECT COUNT(EMPLOYEE_ID),EMPLOYEE_ID --���� ���� �� ����ġ( 1/ 107)
--FROM EMPLOYEES
--GORUP BY(EMPLOYEE_ID);  --:���̺��� �ϳ��� �׷����� �ν�

--�������̺��� �μ� ���̵��� ���� ���� ��ȸ
SELECT COUNT(DEPARTMENT_ID)
FROM EMPLOYEES;

--COUNT �Լ��� *��밡��=>NULL���� ������ ���
SELECT COUNT(*)
FROM EMPLOYEES;


--�������̺��� �޿� �Ѿ� �հ� ���
SELECT SUM(SALARY)
FROM EMPLOYEES;

--�������̺��� �ִ�޿� �ּ� �޿� ���
SELECT MAX(SALARY), MIN(SALARY)
FROM EMPLOYEES;

--�������̺��� �μ� ���̵� 100�� ���� ��� �޿� ��� �Ҽ��� 1�� �ڸ�����

SELECT ROUND(AVG(SALARY),1)
FROM EMPLOYEES
WHERE DEPARTMENT_ID=100;

