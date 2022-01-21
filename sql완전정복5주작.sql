//insert

insert into tcity values('평택',453,51,'n','경기');

// 여기까지 하면 임시 저장 영역에 저장이 대기된다


commit;

// 커밋과 함께 들어가짐

select * from tcity;

insert into tcity ( name,area,popu,metro,region)
values ( '용인',293,98,'y','경기');

commit;


select * from tstaff;

insert into tstaff(name , depart , gender , joinDate, grade, salary, score) 
values ( '서영호','개발부','남',20211221,'대리',500,100.0);

commit;

select * from tstaff; 

//insert into select;


insert into tstaff (name ,depart,gender,joindate,grade,salary,score) 
select name ,region, metro,'20210629','신입',area,popu from tcity where region = '경기';


// create select

create table newTemp select * from tstaff where 0 <> 0 ;


select * from newTemp;

// 






