--book ���̺� ����
CREATE TABLE t_book2 AS
SELECT * FROM book;

SELECT * FROM t_book2;

-- '�౸�� ����'�� 10000������ �����Ͻÿ�
UPDATE t_book2
SET price = 10000
WHERE bookid = 1;

--����� ������ ���ǻ� �̸��� �������� �����Ͻÿ�
UPDATE t_book2
SET publisher = '������'
WHERE bookid = 6;

--'�߱��� ��Ź��'�� ���ǻ縦 '�Ｚ��'�� �����ϰ�, ������ 15000������ ����
UPDATE t_book2
SET publisher = '�Ｚ��' , price = 15000
WHERE bookid = 8;

--������ȣ�� 5���� å�� �����Ͻÿ�
DELETE FROM t_book2
WHERE bookid = 5;

--'�������̺�' ������ �����Ͻÿ�
DELETE FROM t_book2
WHERE bookid = 4;

DELETE FROM t_book2
WHERE bookname = '���� ���̺�';


ROLLBACK;

COMMIT;