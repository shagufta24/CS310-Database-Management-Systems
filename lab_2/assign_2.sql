-- Query 1
select name, dob, timestampdiff(year, dob, CURDATE()) as age from student where timestampdiff(year, dob, CURDATE()) > 18 order by age desc;

 -- Query 2

-- SELECT 
--     (SELECT count(*) FROM student 
--         WHERE gender = 'M' AND timestampdiff(year, dob, CURDATE()) >= 20) 
--             AS male_count,
--     (SELECT count(*) FROM student 
--         WHERE gender = 'F' AND timestampdiff(year, dob, CURDATE()) >= 20) 
--             AS female_count 
-- FROM student
-- group by 1;

select count(case when gender = 'M' then 1 end) as male_count, count(case when gender = 'F' then 1 end) as female_count from student where timestampdiff(year, dob, curdate()) >= 20;

-- Query 3

select count(*) as student_count from student where math > (math + sci + eng + social + sports)/5;

-- Query 4

select (select sum(cap) from campus where pincode REGEXP '^[56]') as south_zone, ':', (select sum(cap) from campus where pincode REGEXP '^[34]') as west_zone from campus group by 1;

-- Query 5

select max((math + sci + eng + social + sports)/5) as second_highest_avg from student where (math + sci + eng + social + sports)/5 not in (select max((math + sci + eng + social + sports)/5) from student);

-- Query 6

select name, rollno, (math + sci + eng + social + sports)/5 as avg_marks, if((math + sci + eng + social + sports)/5 > (select avg((math + sci + eng + social + sports)/5) from student),"High","Low") as score_status from student;


