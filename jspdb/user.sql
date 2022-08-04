use jspdb;

select * from user;
select * from user where uid=129;

-- 손흥민을 추신수로 변경
update user set name='추신수' where uid=129;

desc user;

-- 필드(열) column 추가
alter table user add phone varchar(20);

-- 남한강의 전화번호를 010-1234-5678로 입력
update user set phone='010-1234-5678' where uid=158;