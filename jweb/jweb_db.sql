-- �� �����ͺ��̽� �����
-- USER ����
CREATE USER c##jweb IDENTIFIED BY 54321;

--���� ���� �ο�
GRANT CREATE SESSION TO c##jweb;

--���̺�� ���̺� ���� ����
GRANT CREATE TABLE, RESOURCE TO c##jweb;

--���̺� �����̽�
ALTER USER c##jweb DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;

--  ���� ����� ���� �� ���


SHOW USER;