--인연 user테이블 생성
create table tbl_inyun_user(
	email varchar2(300) primary key,
	password varchar2(200) not null,
	username varchar2(100) not null,
	cell_phone varchar2(150) not null,
	user_key varchar2(100) not null,
	sub_date date--가입날짜
);

select * from tbl_inyun_user;
delete from TBL_INYUN_USER where username='건희횽';



select * from tbl_inyun_user where sub_date < (select sysdate - 1 from dual) and user_key != 'hye_ah';
select sysdate, sysdate + 1/(24*60) from dual;
select sysdate, sysdate + 100 from dual;

select sysdate - 1/(24*60) from dual
