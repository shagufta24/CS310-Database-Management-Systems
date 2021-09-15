-- STUDENT TABLE

-- Adding gender column
alter table student add gender enum ('M', 'F');

-- Adding team column
alter table student add team varchar(1);

-- Dropping age column
alter table student drop column age;

-- Adding dob column
alter table student add dob date;

-- Adding year of joining column
alter table student add yjoin year(4);

-- Reordering the columns
alter table student modify dob date after rollno;
alter table student modify yjoin year(4) after dob;
alter table student modify gender after yjoin;
alter table student modify team varchar(1) after gender;

-- Updating existing rows
update student set dob = '2000-01-09', yjoin = '2019', gender = 'M', team = 'R' where rollno = 33;
update student set dob = '2002-03-21', yjoin = '2019', gender = 'M', team = 'W' where rollno = 58;
update student set dob = '1999-09-11', yjoin = '2018', gender = 'M', team = 'A' where rollno = 27;
update student set dob = '2001-04-28', yjoin = '2019', gender = 'M', team = 'R' where rollno = 56;
update student set dob = '1999-02-13', yjoin = '2018', gender = 'M', team = 'G' where rollno = 11;
update student set dob = '2000-11-01', yjoin = '2019', gender = 'M', team = 'W' where rollno = 50;

-- Adding new rows
insert into student values ('carol', 7, '2000-06-19', '2018', 'F', 'W', 78, 99, 45, 56, 88);
insert into student values ('wanda', 21, '2001-08-10', '2019', 'F', 'R', 42, 73, 59, 63, 65);
insert into student values ('natasha', 52, '2001-08-19', '2019', 'F', 'A', 83, 86, 89, 91, 99);
insert into student values('gamora', 34, '2001-06-19', '2018', 'F', 'G', 84, 93, 79, 94, 85);
insert into student values('jean', 46, '2000-06-19', '2019', 'F', 'G', 98, 97, 84, 87, 72);

-- CAMPUS TABLE

-- Adding pincode
alter table campus add pincode int after loc;

-- Updating pincodes
update campus set pincode = 500043 where cid = 101;
update campus set pincode = 600012 where cid = 104;
update campus set pincode = 400076 where cid = 107;

-- Adding new rows
insert into campus values ('mdc', 106, 'pun', 411021, 1700, false, true, true);
insert into campus values ('mdd', 109, 'del', 110001, 1400, true, true, false);
insert into campus values ('mvc', 110, 'vel', 631001, 1400, true, true, true);
insert into campus values ('mbd', 113, 'bgl', 560002, 800, false, true, true);



