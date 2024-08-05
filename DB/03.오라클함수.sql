        CHAPTER 03. ����Ŭ�Լ�
/*�Լ�: �Է°��� �־� Ư���� ����� ���� ������
��������� �Խ�: ����ڰ� �ʿ信 ���� ��������
�����Լ�: ����Ŭ���� �̸� ������ �Լ�, �ʿ丶�� ȣ���ؼ� ���
=>������,������, ��¥��, ��ȯ��, null�Լ�, �����Լ�

�Լ��̸�():����� �����Ҷ� ����ϴ� �Է°�: �Ű�����, ���ڰ�
1. ���ڿ��Լ�: UPPER():��� �빮�ڷ� ��ȯ /LOWER():�ҹ��ڷ� ��ȯ*/
SELECT 'abced123@@'
FROM DUAL;
--DUAL���̺�: �ӽ� ����, �Լ� ����� Ȯ�� �뵵 ����ϴ� ���̽��� ���̺�/ ����Ŭ �ְ������ ���� ���̺�(SYS����)
--�������̺��� ������ �̸��� �빮�ڷ�, �̸����� �ҹ��ڷ�

SELECT UPPER(FIRST_NAME)
FROM EMPLOYEES;

SELECT LOWER(EMAIL)
FROM EMPLOYEES;

--LENGTH():��ȣ�� ���� ���� ���ϴ� �Լ�

SELECT LENGTH('HELLO WORLD')
FROM DUAL;

--�������̺��� ������ FIRST_NAME�� ���, FIRST_NAME�� ���̵� ���
SELECT FIRST_NAME, LENGTH(FIRST_NAME)
FROM EMPLOYEES;

--������ FIRST_NAME�� ���̰� 5�̻��� �������� �������̵� ,�̸�
SELECT EMPLOYEE_ID, FIRST_NAME
FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME)>=5;

/*SUBSTR():���ڿ��� �����ϴ� ���Լ�
    SUBSTR(�Է°�, ������ġ, �������)
    SUBSTR(�Է°�, ������ġ)=>������� ������ ���ۺ��� ������ ���
    */
SELECT SUBSTR('�ΰ����ɻ���б�',3,2) AS ����,SUBSTR('�ΰ����ɻ���б�',1,4) AS �ΰ�����,
        SUBSTR('�ΰ����ɻ���б�',5) AS ����б�
FROM DUAL;



SELECT HIRE_DATE
FROM EMPLOYEES;

--�Ի糯¥�� ���� ,��, �Ϻ��� ���
SELECT SUBSTR(HIRE_DATE,1,2)AS ����,
    SUBSTR(HIRE_DATE,4,2)AS ��,
    SUBSTR(HIRE_DATE,7)AS ��
FROM EMPLOYEES;

/*REPLACE():Ư�����ڸ� �ٸ����ڷ� �ٲپ� �ִ� �Լ�
REPLACE(���ڿ�������, �ٲٰ� ���� ����,�ٲ���� ����)
REPLACE(���ڿ�������, �ٲٰ� ���� ����)=>�ٲ���� ���� ������ �ٲٰ� ���� ���� ����*/
SELECT REPLACE('�ΰ�����##����б�','#')
FROM DUAL;

--�������̺��� �Ի糯¥ ����ϵ� /���ڿ��� -�� �ٲ� ���
SELECT REPLACE(HIRE_DATE,'/','-')
FROM EMPLOYEES;


-- -�� ���� ���
SELECT REPLACE(HIRE_DATE,'/')
FROM EMPLOYEES;

/*CONCAT():�� ���ڿ� �����͸� ��ġ�� �Լ�, �Ű������� 2���� �� �� �ְ� , 2���� ���ڿ��� ��ġ�� �Լ�
||�̿��ϸ� ���Ѵ� ���� ����

TRIM():�Է¹��� ���ڵ������� �糡 ���� ����*/

SELECT CONCAT('�ΰ�����','����б�')||'�ְ�'
FROM DUAL;

SELECT TRIM('          �������� �ְ�!  ')
FROM DUAL;5

/*ROUND�Ҽ��� ����
--TRUN (A,B):������ ù���ä�° �Ҽ��ڸ����� ��
--B�ڸ�����ŭ ����
MOD(A,B):A�� B�� ���������� ������

��¥�� �Լ�: 
SYSDATE:���� ��¥, �ð� ���, �Է½� �ٷ� �ʴ������� ���, ���� ����
��¥ ���� ����: ����>ȯ�漳��>�����ͺ��̽�>NLS>��¥����>YYYY-MM-DD HH24:MI:SS
DATE+DATE �Ұ�
1/24:1�ð� 1/24/60:�Ϻ� 1/24/60/60:1��
ADD_MONTH(��¥������,������ ������):A������ ��¥ ����
*/
SELECT SYSDATE AS ���糯¥, SYSDATE-1 AS ������¥
FROM DUAL;


/*����ȯ
�Ͻ���: �ڵ� ����ȯ
�����:����ڰ� ���� ����ȯ
TO_CHAT(��ȯ�� ������, �������): ��¥, ���ڸ� ���ڷ� ��ȯ
TO_NUMBER(���ڿ�������, �νĵ� ��������):
TO_DATE(���ڿ�������, �νĵ� ��¥����)*/
SELECT SALARY AS �޿�����
    ,TO_CHAR(SALARY, 'L999,999')
    FROM EMPLOYEES;
    
/*NULLó���Լ�
NVL(NULL���� �˻��� ������, NULL�ϰ�� ��ȯ�� ������):�ΰ� ��ü ����/ 
/NVL2(�˻��� ������,���� �ƴҰ�� ��ȯ������,���ϰ�� ��ȯ������):*/
SELECT FIRST_NAME, DEPARTMENT_ID,
NVL(DEPARTMENT_ID,0)
,NVL2(DEPARTMENT_ID, '����','����')
FROM EMPLOYEES;

--�������̺��� ���ʽ��� ���ϰ�� 0���� ���
SELECT NVL(COMMISSION_PCT,0)
FROM EMPLOYEES;


--�������̺��� �������̵�, �̸�, �޴������̵� ���, �޴����ִ� ������ ����, ���� ������ ��ǥ
SELECT EMPLOYEE_ID,FIRST_NAME,NVL2(MANAGER_ID,'����','��ǥ')
FROM EMPLOYEES;

--�����Լ� DECODE(�˻����� �� �÷� OR ������<���ذ�>,�񱳰�, ��ġ�� ��ȯ��, ��ġ���Ҷ� ��ȯ��):��Ȳ�� ���� �ٸ� �����͸� ��ȯ�ϴ� �Լ�
--�˻� ���� ���� ���� ���� ��ȯ

SELECT FIRST_NAME, DEPARTMENT_ID, DECODE(DEPARTMENT_ID, NULL, '�μ�����', '�μ�����')
FROM EMPLOYEES;

SELECT FIRST_NAME, DEPARTMENT_ID, DECODE(DEPARTMENT_ID, NULL, '�μ�����', 90,'�μ� 90', '�μ�����')
FROM EMPLOYEES;


/*�������̺��� �������̵�, �����̸�, �Ŵ����̸� ��� ��, �Ŵ����� �ִ� ������ ����, ���� ������ ��ǥ(DECODE)*/
SELECT EMPLOYEE_ID, FIRST_NAME, MANAGER_ID, DECODE(MANAGER_ID, NULL,'��ǥ','����')
FROM EMPLOYEES;
--�Ŵ������̱�� 100�̸� �̻�
SELECT EMPLOYEE_ID, FIRST_NAME, MANAGER_ID, DECODE(MANAGER_ID, NULL,'��ǥ',100,'�̻�','����')
FROM EMPLOYEES;

SELECT EMPLOYEE_ID, FIRST_NAME, MANAGER_ID, DECODE(EMPLOYEE_ID, 100,'��ǥ',101,'�̻�',102,'��ǥ','����')
FROM EMPLOYEES;
