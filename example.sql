--���̺� ex2 ����
CREATE TABLE ex2 (
    col_date      DATE,         --��,��,��
    col_timestamp TIMESTAMP     --��,��,��,��,��,��
);

--���̺� ex3 ����
CREATE TABLE ex3(
    col_null    VARCHAR2(10),
    col_not_null VARCHAR2(10) NOT NULL
);

-- ex3�� ������ �Է�
INSERT INTO ex3 VALUES ('Hello','');    --NOT NULL �������� ����
INSERT INTO ex3 VALUES ('','Hello');    --�ݴ��� ��쿣 �����ƴ�


--������ �Է�(���� ��¥ - SYSDATE �Է�)
INSERT INTO ex2 VALUES (
    sysdate,
    systimestamp
);

COMMIT;

--������ ��ȸ
SELECT*FROM ex3
SELECT col_date FROM ex2;