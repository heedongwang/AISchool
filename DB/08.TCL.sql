--CHAPTER 08.TCL(Transction Control Language)

/*Ʈ�����: DB���¸� ��ȭ��Ű�� ���� �ּҼ������, ����ó�� �ּ� �������
    Ư��: 1)Automicity(���ڼ�):ALL or Nothing ,��� ���� �Ǵ� ���� �������
         2)Consistency(�ϰ���):�ϰ��� �ִ� ���·� ����
         3)Isolation(����): ����� �ٸ� Ʈ������� ���� �ȹ���, ���� �������
         4)Durability(���Ӽ�): ������ Ʈ�������� ������ �ݿ�

    ��ɾ� 1)COMMIT:DB�� ������ ����, ������ COMMIT���� ���� ����
          2)ROLLBACK:Ʈ������ ���, ������ COMMIT ���� ����
          3)SAVEPOINT: Ʈ������ �۰� ������ ����*/
          
--���̺� ����  ,���������� ���� �ȵ�
SELECT * FROM TCL_EMP;

CREATE TABLE TCL_EMP AS SELECT * FROM EMPLOYEES;

DELETE FROM TCL_EMP WHERE EMPLOYEE_ID=100;
ROLLBACK;

COMMIT; --��������
ROLLBACK;HO


DELETE FROM TCLE_EMP WHERE EMPLOYEE_IF-101;

CREATE TABLE TCL_DEMP AS SELECT * FROM EMPLOYEES;
