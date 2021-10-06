-- Query 1
select name from student where team = 'R' union select name from student where gender = 'F';

-- Query 2
select team, count(*) as count from student group by team;

-- Query 3
select team, avg(math) as boys_avg_math_score from student where gender = 'M' group by team;

-- Query 4
select * from student group by team, gender order by team;

-- Query 5
select team, avg(sci) from student group by team order by avg(sci) desc limit 2;