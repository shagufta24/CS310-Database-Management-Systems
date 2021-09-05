-- Creation of Student table:
create table Student(name varchar(20), rollno int not null unique, age int, math int, sci int, eng int, social int, sports int);

-- Insertion into student:
insert into Student values('dwayne', 33, 21, 98, 94, 91, 96, 55);
insert into Student values('john', 58, 18, 70, 87, 77, 98, 67);
insert into Student values('dave', 27, 22, 54, 68, 98, 96, 77);
insert into Student values('randy', 56, 19, 69, 75, 65, 67, 98);
insert into Student values('kane', 11, 22, 86, 95, 52, 57, 73);
insert into Student values('tom', 50, 21, 76, 84, 62, 74, 81);

-- Creation of Campus table:
create table Campus(name varchar(20), cid int not null unique, loc varchar(20), cap int, law bool, engg bool, buss bool);

-- Insertion into campus:
insert into Campus values('mec', 101, 'hyd', 1000, true, true, true);
insert into Campus values('muc', 104, 'mad', 2000, false, true, true);
insert into Campus values('mgt', 107, 'bom', 1500, true, false, true);

