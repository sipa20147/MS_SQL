use EDUCATION

select MARK, STUDENT_ID from EXAM_MARKS where STUDENT_ID = (SELECT STUDENT_ID from STUDENT where SURNAME like 'Котов')

select FNAME from STUDENT where student_id = (select student_id from exam_marks where mark > (select avg(MARK * 1.0) from EXAM_MARKS group by SUBJ_ID having SUBJ_ID = 22) and SUBJ_ID = 22)

select FNAME from STUDENT where student_id = (select student_id from exam_marks where mark < (select avg(MARK * 1.0) from EXAM_MARKS group by SUBJ_ID having SUBJ_ID = 22) and SUBJ_ID = 22)

select count(distinct subj_id) from exam_marks where STUDENT_ID in (select student_id from exam_marks group by STUDENT_ID having count(subj_id) > 1)
select student_id from exam_marks group by STUDENT_ID having count(subj_id) > 1
select * from EXAM_MARKS

select student_id, fname from student a where stipend in (select max(stipend) from STUDENT b group by CITY having a.city = b.city)

select distinct CITY from STUDENT where city <> all (select city from UNIVERSITY)
