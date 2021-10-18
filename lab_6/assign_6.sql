-- Query 1
select * from student join marks_sem1 on student.rollno = marks_sem1.rollno;

-- Query 2
select name, sports from student left join marks_sem1 on student.rollno = marks_sem1.rollno;

-- Query 3
select student.name, marks_sem1.math, student.rollno from student join marks_sem1 on student.rollno = marks_sem1.rollno join campus on student.cid = campus.cid where law = 1;

-- Query 4
select * from campus left join student on campus.cid = student.cid;
select * from campus right join student on campus.cid = student.cid;
