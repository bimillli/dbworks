--t_address ���̺� ����
CREATE TABLE t_address1(
    num         NUMBER(4),
    username    VARCHAR2(20),
    tel         VARCHAR2(20) NOT NULL,
    email       VARCHAR2(30) NOT NULL,
    gender      VARCHAR2(6),
    joinDate    DATE DEFAULT SYSDATE,
    PRIMARY KEY(num)
);


--�Ϸù�ȣ(������) ����
CREATE SEQUENCE ab_seq
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000
NOCYCLE
NOCACHE;


INSERT INTO t_address1(num, username, tel, email, gender, joinDate)
VALUES(ab_seq.NEXTVAL, '������', '010-2656-5646', 'test@naver.com', '��', SYSDATE);

SELECT * FROM t_address1;
DELETE FROM t_address1; --��ü �����ͻ���
ROLLBACK;
DROP SEQUENCE ab_seq; --������ ����
COMMIT;


