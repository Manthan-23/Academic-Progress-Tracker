Academic Progress Tracker – DevifyX Assignment
=============================================


Project Overview:
-----------------
This project is a MySQL-based Academic Progress Tracker designed to store, manage, and analyze student performance data, including grades, subjects, semesters, and more.


Schema Design & Assumptions:
----------------------------
Tables Created:
- students: Stores student personal details.
- subjects: Contains subject/course information.
- terms: Represents academic terms or semesters.
- grades: Records grades per student per subject per term.


Bonus Tables:
- teachers: Stores teacher details.
- subject_teacher: Maps subjects to teachers.
- attendance: Tracks student attendance per subject per term.


Assumptions:
- A student can enroll in multiple subjects across multiple terms.
- Each subject has one assigned teacher (not varying by term).
- Grades are stored as numeric values (out of 10).
- GPA is the average of numeric grades per term.
- Attendance is tracked as percentage based on total vs attended classes.


How to Run:
-----------
1. Run schema.sql to create all tables.
   

2. Run data.sql to insert sample data.
   

3. Run queries.sql to test required and bonus features.
   

Grading Scheme Used:
--------------------
Numeric grading system out of 10.
GPA is calculated as the average of numeric grades per student per term.


Bonus Features Implemented:
----------------------------
✓ Attendance Tracking: Track classes attended vs total per subject and student.
✓ Teacher Assignment: Map subjects to teachers via subject_teacher table.
✓ Grade Distribution Statistics: Query for student count per grade per subject.
✓ Honors/Distinction: List students with GPA >= 8.0 in any term.


Final Notes:
------------
- Scripts tested in MySQL Workbench 8.0.
- Make sure to run scripts in the correct order: schema.sql → data.sql → queries.sql.

