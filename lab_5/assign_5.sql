-- QUESTION 1

-- creating marks_sem1 table
create table marks_sem1 as select rollno, math, sci, eng, social, sports from student;

-- setting rollno as primary key
alter table marks_sem1 add primary key(rollno);

-- QUESTION 2

-- creating table faculty
create table faculty (name varchar(20), fid char(4) not null primary key, subject varchar(20));

-- inserting rows in faculty table
insert into faculty values ('kakashi', 4003, 'math');
insert into faculty values ('guy', 5002, 'sports');
insert into faculty values ('kurenai', 5038, 'eng');

-- QUESTION 3

-- creating table sem1
create table sem1 (subj_id char(4) not null primary key, subject varchar(20), fid char(4), cap int, campus int);

-- inserting rows in sem1 table
insert into sem1 values (101, 'math', 4003, 60, 101);
insert into sem1 values (102, 'sports', 5002, 70, 101);
insert into sem1 values (105, 'eng', 5038, 60, 104);

-- Adding keys
alter table sem1 add key(fid);
alter table sem1 add key(campus);

-- QUESTION 4

-- making cid a primary key
alter table campus add primary key(cid);

-- QUESTION 5

-- dropping columns from student
alter table student drop math, drop sci, drop eng, drop social, drop sports;

-- adding rollno foreign key
alter table student add constraint fk_rollno foreign key (rollno) references marks_sem1(rollno);

-- adding cid column and inserting rows
alter table student add column cid int;

update student set cid = 109 where rollno = 33;
update student set cid = 101 where rollno = 58;
update student set cid = 110 where rollno = 27;
update student set cid = 104 where rollno = 56;
update student set cid = 104 where rollno = 11;
update student set cid = 101 where rollno = 50;
update student set cid = 113 where rollno = 7;
update student set cid = 107 where rollno = 21;
update student set cid = 109 where rollno = 52;
update student set cid = 109 where rollno = 34;
update student set cid = 110 where rollno = 46;

-- adding campus id foreign key
alter table student add constraint fk_cid foreign key (cid) references campus(cid);

-- EXTRA: Altering student table definition
-- alter table student modify team char(1) default 'R';
-- alter table student modify gender char(1) default 'M';
-- alter table student alter dob set default '2001-01-01';
-- alter table student alter yjoin set default '2019';