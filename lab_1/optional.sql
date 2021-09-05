
-- Query 11
select name, rollno, (sci + math + eng + social + sports)/5 as avg from student where ((sci + math + eng + social + sports)/5  = (select max(sci + math + eng + social + sports)/5 from student));

-- Query 12
select name from student where name regexp '^.a';

-- Query 13
select name, math from student order by math asc;