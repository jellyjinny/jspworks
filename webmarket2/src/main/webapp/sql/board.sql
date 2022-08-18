-- board 테이블 
create table board(
	num int primary key auto_increment,
	name varchar(20) not null,
	subject varchar(100) not null,
	content text not null,
	write_date varchar(30),
	hit int,
	id varchar(10) not null,
	constraint fk_member_board foreign key(id)
	references member(id) on delete cascade
);

-- 게시글 추가
insert into(1, )

SELECT * FROM 