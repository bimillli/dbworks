
--������ ����
CREATE SEQUENCE mySeq
INCREMENT BY 1           --1������     
START WITH 1             --1���ͽ���
MINVALUE 1               --�ּҰ��� �ִ밪 ����
MAXVALUE 1000
NOCYCLE                  --�޸𸮰���
NOCACHE;

-- 1���� ������ 1�� ����, �ּҰ�1���� �ִ밪 1000����
-- ������ �ڵ�������, ���� �������� board���̺� ����ϱ�

-- board���̺� ����
CREATE TABLE board(
    bno         NUMBER(4) PRIMARY KEY,
    title       VARCHAR2(50) NOT NULL,
    content     VARCHAR2(2000) NOT NULL,
    regDate     DATE DEFAULT SYSDATE
);