-- ���� �Լ�
-- �Լ��̸�(�Ű�����)
-- ���� ���� �Լ�
-- dual : ����Ŭ������ ����ϴ� �������̺� 
-- ���밪
SELECT ABS(-10) ���밪, ABS(10), ���밪
FROM dual;

-- salary�� 30�Ϸ� ���� �� �Ҽ� �ڸ����� ���� ����(����)�� �� ���
SELECT salary,
       salary / 30 �ϱ�,
       TRUNC(salary/30,1) ���1,
       TRUNC(salary/30,0) ���2,
       TRUNC(salary/30, -1) ���3,
       TRUNC(salary/30, -2) ���4
FROM employee;

-- 3.875�� �Ҽ� ù°�ڸ����� �ݿø��� ���� ���Ͻÿ�
SELECT ROUND(3.875,1) ���1,  -- �Ҽ� ù°�ڸ�
       ROUND(3.875,0) ���2,  -- ����(0���ڸ�)
       ROUND(16.875,-1) ���3, -- ���� �ڸ�
       ROUND(516.875,-2) ���4 -- ���� �ڸ�
FROM dual;

-- ���� ��� �ֹ� �ݾ��� ��� ������ �ݿø��� ���� ���Ͻÿ�
SELECT custid ����ȣ,
       ROUND(AVG(saleprice), -2) ��ձݾ�
FROM orders
GROUP BY custid;

-- ���ڰ��� �Լ�
SELECT LPAD('cloud', 10, '*') FROM dual;
SELECT RPAD('cloud', 10, '*') FROM dual;

-- �μ� �̸����� ó������ �����ؼ� �� ���� ���� ���
-- SUBSTR(Į����, �����ε���, ���ڼ�)
SELECT SUBSTR(deptname, 1, 2) ����
FROM department;

-- ���� ���� �߱��� ���Ե� ������ �󱸷� �����Ͽ� �˻��Ͻÿ�
SELECT bookid,         --'oldname','newname'
       REPLACE(bookname, '�߱�','��') bookname
FROM book;

-- �½��������� ������ ������ ����� ���ڼ�(����Ʈ��)�� �˻��Ͻÿ�.
SELECT bookname ����,
       LENGTH(bookname) ���ڼ�
FROM book
WHERE publisher = '�½�����';

-- �� �̸����� ���� ���� ���� ����� �ο��� ���ϱ�
-- GROUP BY���� �Լ��� ������ �� ����
SELECT SUBSTR(name, 1, 1)��,
       COUNT(*) �ο�
FROM customer
GROUP BY SUBSTR(name, 1, 1);


-- ��¥, �ð��Լ�
-- ������ �ֹ��Ϸκ��� 10�� �� ������ Ȯ���Ѵ�. �� �ֹ��� Ȯ�����ڸ� ���Ͻÿ�
-- ��¥���� �ϼ��� ���Ҷ� : date + �ϼ�
SELECT orderid �ֹ���ȣ, 
       orderdate �ֹ���,
       orderdate + 10 Ȯ��
FROM orders
WHERE orderid <= 5;

-- �ֹ���ȣ�� 6���� 10������ ������ �ֹ��Ͽ� 3������ ���� ���� ���Ͻÿ�.
-- ���� ���ϱ� : ADD_MONTHS(��¥, ������)
SELECT orderid �ֹ���ȣ, orderdate �ֹ���,
    ADD_MONTHS(orderdate, 3) ���ϱ�_���,
    ADD_MONTHS(orderdate, -3) ����_���
FROM orders
WHERE orderid BETWEEN 6 AND 10;

-- �� ������: MONTHS_BETWEEN(������, ������)
-- �ֹ���ȣ�� 10�� ������ �ֹ��Ϸκ��� ���ñ����� �� �������� ���Ͻÿ�
SELECT orderid �ֹ���ȣ, orderdate �ֹ���, SYSDATE ������,
       TRUNC(MONTHS_BETWEEN(SYSDATE, orderdate),0) �Ѱ�����
FROM orders
WHERE orderid = 10;

--�ڵ� Ÿ�� ��ȯ
--����, ���� ��ȣ ��ȯ ����
SELECT 1 + '2' / '1' 
FROM dual;

-- ���� Ÿ�� ��ȯ
-- ���� ���� ��ȯ(���ڸ� ���ڷ� ��ȯ)
SELECT TO_NUMBER('250')
FROM dual;

-- ��¥���� : ��¥ ���ڿ��� ���� ������ ��¥ Ÿ������ ��ȯ
-- TO_DATE(���ڿ�, ��¥����)
SELECT TO_DATE('2022/06/30', 'YYYY/MM/DD')
FROM dual;

-- ��¥�� ���� ���� ��ȯ
-- TO_CHAR(��¥, ��¥����,)
SELECT TO_CHAR(SYSDATE, 'YY') �⵵,
       TO_CHAR(SYSDATE, 'YYYY') �⵵_4,
       TO_CHAR(SYSDATE, 'MM') ��,
       TO_CHAR(SYSDATE, 'DD') ��,
       TO_CHAR(SYSDATE, 'YYYY-MM-DD') ��¥
FROM dual;

--�ð��� ���� �������� ��ȯ
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') �ð�_24,
       TO_CHAR(SYSDATE, 'HH12:MI:SS') �ð�_12,
       TO_CHAR(SYSDATE, 'YYYY-MM-DD HH:MI:SS') ��¥�ͽð�             
FROM dual;

-- NVL(Į��, ġȯ��)�Լ��� NULL ó���ϱ�
SELECT name,
       NVL(phone, '000-9000-111') phone
FROM customer
WHERE phone is NULL;


