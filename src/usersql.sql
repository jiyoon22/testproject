use gb;

create table f_user(
 useridx int primary key auto_increment,
 user_logintype int default 0,
 userid varchar(300) unique not null,
 userpw varchar(300) not null,
 username varchar(300) not null,
 useryear int not null,
 usermonth int not null,
 userday int not null,
 usergender enum('M','F'),
 zipcode varchar(300) not null,
 addr varchar(1000),
 addrdetail varchar(1000) not null,
 str_email01 varchar(300) not null,
 str_email02 varchar(300) not null,
 userphone varchar(300) not null,
 vertificationcode varchar(300) not null
);

select * from f_user;
select userpw from f_user where userid="apple";
drop table f_user;

select userpw from f_user where userid="apple";

create table f_zone(
fzidx int primary key auto_increment,
area varchar(300) not null,
name varchar(300) not null,
addr varchar(300) not null,
latitude varchar(300) not null,
longitude varchar(300) not null
);

create table f_board(
	boardnum bigint primary key auto_increment,
    boardtitle varchar(300) not null,
    boardcontents text not null,
    regdate datetime default now(),
    updatedate datetime default now(),
    readcount int default 0,
    userid varchar(300)
);
create table f_file(
	systemname varchar(2000),
    orgname varchar(2000),
    boardnum bigint
);
select * from f_file;


create table f_reply(
	replynum bigint primary key auto_increment,
    userid varchar(300),
    boardnum bigint,
    replycontents varchar(3000),
    regdate datetime default now(),
    updatechk varchar(100) default 'x'
);