--ex4 ���̺� ���� 
CREATE TABLE ex4(
    userId      VARCHAR2(10) PRIMARY KEY, --�⺻Ű ����(�⺻Ű�� ����ũ�� ����������)
    passwd      VARCHAR2(10) NOT NULL
);
--���̺� �̸� ���� ex4 -> member
ALTER TABLE ex4 RENAME TO member;

--������ Į�� �߰�
ALTER TABLE member ADD regDate Date;

--�Ի��� Į���߰�
ALTER TABLE member ADD hireDate VARCHAR2(20);

--�Ի��� Į������
ALTER TABLE member MODIFY hireDate VARCHAR2(30);

--�޿� Į�� �߰�
ALTER TABLE member ADD salary NUMBER;

--������ ����
INSERT INTO member (userId, passwd) VALUES ('sky2022','abcd123');
INSERT INTO member (userId, passwd) VALUES ('river2022','abcd12345');
--����
INSERT INTO member (userId, passwd, regDate, salary, hireDate)
VALUES ('smile2022', 'abcd1234', SYSDATE, 1000000);

--������ ����(����) - UPDATE ���̺�� SET Į����=�� WHERE ����
UPDATE member SET salary = 2000000 WHERE userId = 'smile2022';
UPDATE member SET salary = 1000000 WHERE userId = 'river2022';

--userId�� 'sky2022'�� ����ϰ� �޿� ������ �����ϱ�
--UPDATE member SET salary = 1000000 WHERE userId = 'sky2022';
--UPDATE member SET regDate = SYSDATE WHERE userId = 'sky2022';
UPDATE member SET regDate = SYSDATE, salary = 1000000 WHERE userId = 'sky2022';

DELETE FROM member; --������ �����ϱ�(��ü)

DELETE FROM member WHERE userId = 'river2022'; --Ư�� �����ͻ���
COMMIT; -- Ŀ��
ROLLBACK; -- �ֱ�Ŀ�� ������ �ѹ�
FLASHBACK; --?

--������ ��ȸ
SELECT * FROM member;

--������ ��ȸ(�������� ����, DESC - ��������)
SELECT * FROM member ORDER BY salary DESC;

--Ư�� ������ ��ȸ(id,pw,������ ���) SELECT Į���� FROM ���̺�� WHERE ����
SELECT regDAte FROM member WHERE userId = 'river2022';

--���̺� ����
CREATE TABLE member2 AS
SELECT * FROM member

--���̺����
DROP TABLE member2;

--���̺��� ����
DESC member;