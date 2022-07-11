--book ���̺� �����
CREATE TABLE book(
    bookid NUMBER PRIMARY KEY,
    bookname VARCHAR2(40),
    publisher VARCHAR2(40),
    price NUMBER
);

--book �ڷ� ����
INSERT INTO book VALUES(1,'�౸�� ����','�½�����',7000);
INSERT INTO book VALUES(2,'�౸�ƴ� ����','������',13000);
INSERT INTO book VALUES(3,'�౸�� ����','���ѹ̵��',22000);
INSERT INTO book VALUES(4,'���� ���̺�','���ѹ̵��',35000);
INSERT INTO book VALUES(5,'�ǰ� ����','�½�����',8000);
INSERT INTO book VALUES(6,'����� ����','�½�����',6000);
INSERT INTO book VALUES(7,'�߱��� �߾�','�̻�̵��',20000);
INSERT INTO book VALUES(8,'�߱��� ��Ź��','�̻�̵��',13000);
INSERT INTO book VALUES(9,'�ø��� �̾߱�','�Ｚ��',7500);
INSERT INTO book VALUES(10,'Olympic Champions','Pearson',13000);

--book �ڷ� �˻�, ��� ������ �̸��� ������ �˻��Ͻÿ�
SELECT bookname, price FROM book;

--��� ������ ���� ��ȣ, �����̸�, ���ǻ�,����
SELECT bookid, bookname, publisher, price FROM book;

--��� ���ǻ� �˻� - (�ߺ����� - DISTINCT)
SELECT DISTINCT publisher FROM book;

--������ WHERE
--������ 20000�� �̸��� ������ �˻�
SELECT*
FROM book
WHERE price < 20000;

--���� : ������ 10000�� �̻� 20000�� ����
--BETWEEN ~ AND
SELECT*
FROM book
WHERE price BETWEEN 10000 AND 20000;

SELECT*
FROM book
WHERE price >= 10000 AND price <= 20000;

--IN(A, B) : A�Ǵ� B
--���ǻ簡 '�½�����' Ȥ�� '���ѹ̵��'�� ������ �˻��Ͻÿ�
SELECT*
FROM book
WHERE publisher IN('�½�����', '���ѹ̵��');

--���ǻ簡 '�½�����' Ȥ�� '���ѹ̵��'�� �ƴ� ���� �˻�
SELECT*
FROM book
WHERE publisher NOT IN('�½�����','���ѹ̵��');

--Like ������ : % ��ȣ���
--'�౸�� ����'�� �Ⱓ�� ���ǻ� �˻�
SELECT*
FROM book
WHERE bookname LIKE '�౸�� ����';

--���� �̸��� '�౸'�� ���Ե� ���ǻ� �˻�
--�����ϴ� ���� : %�ܾ�, ������ ���� : �ܾ�%
SELECT bookname, publisher
FROM book
WHERE bookname LIKE '%�౸%';

-- '�౸'�� ���� ���� �� ������ 20000�� �̻��� ���� �˻�
SELECT bookname, publisher, price
FROM book
WHERE bookname LIKE '%�౸%' AND price >= 20000;

--������ �̸������� �����Ͻÿ�
SELECT*
FROM book
ORDER BY bookname; DESC;

--������ ������ ������������ �˻��ϰ�, ������ ������ ���ǻ縦 �������� �˻�
SELECT*
FROM book
ORDER BY price DESC, publisher ASC;
