
-- Query 1
select cid as 'Campuses supporting law' from campus where law = true;

-- Query 2
select name, rollno, age, math, sci, sports from student where name = 'Dave';

-- Query 3
select name, rollno from student where math > 80 or sci > 80;

-- Query 4
select distinct social as 'distinct social marks' from student;

-- Query 5
select count(eng) as 'No. of students failing english' from student where eng < 70;

-- Query 6
select name, rollno from Student where sci + math = (select max(sci + math) from student);

-- Query 7
select loc as 'Location not offering engg' from campus where engg = false;

-- Query 8
select (select sum(cap) from campus where engg = true) / (select sum(cap) from campus where engg = false) as 'Ratio of students in the campuses that provide stem to those who do not';

select (select sum(cap) from campus where engg = true) as 'Stem provided', (select sum(cap) from campus where engg = false) as 'No Stem provided' from campus group by 1;

-- Query 9
select * from student where sci > 70 and math > 70 and eng > 70 and social > 70 and sports > 70;

-- Query 10
select concat (21 * floor(rollno/21), '-', 21 * floor(rollno/21) + 20) as `Group`, count(*) as `Number of students` from student group by 1 order by rollno;