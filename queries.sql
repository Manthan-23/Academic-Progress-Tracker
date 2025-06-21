
-- Shows the GPA per Term
select student_id, term_id, round(avg(grade), 2) as gpa from academic_tracker.grades group by student_id, term_id;


-- Shows the Average, Highest, Lowest per subject
select subject_id,
round(avg(grade), 2) as average_grades,
max(grade) as highest_grades,
min(grade) as lowest_grades from academic_tracker.grades group by subject_id;

-- Show a student’s grades across all terms and subjects
select g.student_id,
g.grade, t.term_id, s.subject_id as subject_name from academic_tracker.grades g
join academic_tracker.subjects s on g.subject_id = s.subject_id
join academic_tracker.terms t on g.term_id = t.term_id order by g.student_id, g.term_id;


-- Find students with grades below a pass mark in subjects
select student_id, grade, subject_id, count(*) as failed_subjects from academic_tracker.grades where grade < 5.0 group by student_id
having failed_subjects >= 1;





-- ###### BONUS QUERIES ######

-- Shows the attendance percentage per student per subject per term.
select a.student_id, s.stud_name as student_name, a.subject_id, a.term_id, sub.subject_name as subject_name,
round((attended_classes / total_classes) *100, 2) as attendance_percentage from academic_tracker.attendance a
join academic_tracker.students s on a.student_id = s.student_id
join academic_tracker.subjects sub on a.subject_id = sub.subject_id;



-- Shows how students performed in subjects taught by a particular teacher. 
select sub.subject_name AS subject_name, g.student_id, g.grade, t.teacher_name as teacher_name from academic_tracker.grades g
join subject_teacher st on g.subject_id = st.subject_id
join teachers t on t.teacher_id = st.teacher_id
join subjects sub on g.subject_id = sub.subject_id
order by t.teacher_id, g.student_id;


-- Shows how many students got each grade in a given subject
SELECT g.subject_id, s.subject_name AS subject_name, g.grade, COUNT(*) AS num_students
FROM grades g
JOIN subjects s ON g.subject_id = s.subject_id
GROUP BY g.subject_id, g.grade
ORDER BY g.subject_id, g.grade;


-- List students with a GPA ≥ threshold(8.0)
SELECT student_id, term_id, ROUND(AVG(grade), 2) AS gpa FROM grades 
GROUP BY student_id, term_id HAVING gpa >= 8.0;