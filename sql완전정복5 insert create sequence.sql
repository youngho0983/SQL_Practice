

create table tcityDefault (name char(10) primary key, area int null, popu int null, metro char(1) default 'n' not null, region char(6) not null);

// default 이용
insert into tcitydefault values ('강릉',1111,22,default,'강원');

commit ;

// 테이블 형태 확인
show full COLUMNS from  tstaff;


select * from tstaff;




// 체크


create table tcheckTest ( 
gender char(3) null check(gender  = '남' or  gender = '여'),
grade int null check (grade >= 1 and grade <= 3),
origin char(3) null check(origin in ('동','서','남','북')),
name char(10) null check(name like '김%'));

select * from tcheckTest;

/*
createa table semple (
	name char(10) primary key ,
	year int(10) not null)
	
	


createa table semple (
	name char(10)  ,
	year int(10) not null)
	constraint pk_semple_name primary key (name)
	)
/*

create table tcity 
 (
	name char(10) primary key,
	region char(6) primary key,
	area int null ,
	popu int null ,
	metro char(1) not null
	);



create table tcity 
(
	name char(10) ,
	region char(6) ,
	area int null ,
	popu int null ,
	metro char(1) not null
	constraint PK_tcity_name_region primary key(name,region)
	);



*/

/*
create table tcityUnique (name char(10) primary ket,
area int null,
popu int unique null,
metro char(1) not null,
region char(6) not null);


create table tcityUnique (name char(10) primary ket,
area int null,
popu int  null,
metro char(1) not null,
region char(6) not null
constraint uni_table_area unique(area)
);


create table tcityUnique (name char(10) primary ket,
area int null,
popu int  null,
metro char(1) not null,
region char(6) not null
constraint uni_table_area unique(area, region)
);



*/


/* sequence
일련 번호 붙이기는 dbms 따라 다르다
oracle sql Server

create sequece 이름 [as 타입] start with 시작값 increment by 증가 값
minvalue 최소값 maxValue 최대값 cycle | nonCycle cache | nocache

create table tsle (
saleno int primary key,
customer varchar(20),
product varchar(30)
);

insert into tsale values( seqSale.nextVal, 어쩌구, 저쩌구);


insert into tsale values( next value for seqSale, )  // sql Server







*/


