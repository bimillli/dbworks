--���̺� ����� --
CREATE TABLE ex1(--null
    column1 CHAR(10),   --���� ����
    column2 VARCHAR2(10),   --���� ����
    column3 NUMBER    --����--
) --DROP�� DELETE�� �ٸ� DROP, ���̺���� DELETE�� �����ͻ���

--������ �Է� --���ڴ� ������ Ȭ�� ���,�ֵ��Ⱦ�,�����ݷ��� �ᵵ�ǰ� �Ƚᵵ��
INSERT INTO ex1 (column1, column2, column3) VALUES  ('abc','abc',10);
INSERT INTO ex1 (column1, column2) VALUES  ('�츮','�츮');

--�ڷ��� ����, ����, ���� ���� ������ ���� �� �ʼ� ����
COMMIT;

--������ �˻�(��ü�˻�) -- �����ų�� ����� ��Ƽ�
SELECT * FROM ex1;

--Ư�� Į��(��) �˻�
SELECT column1, column2 FROM ex1;

--CHAR�� VARCHAR2�� ũ�� ��
--Į���� ��Ī ����� ��� : �ش� Į���� AS ����
SELECT column1, LENGTH(column1) AS len1,
       column2, LENGTH(column2) AS len2
    FROM ex1;