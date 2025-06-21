
-- Inserted data of 10 students into the student table
insert into academic_tracker.students values(1, "Rahul", "rahul@gmail.com", "1234567822", "2025-06-01");
insert into academic_tracker.students values(2, "Rohan", "rohan@gmail.com", "9234567821", "2025-06-02"),
(3, "Sakshi", "sakshi@gmail.com", "9212542345", "2025-06-03"),
(4, "Avesh", "avesh@gmail.com", "8234567891", "2025-06-04"),
(5, "Sahil", "sahil@gmail.com", "9876548976", "2025-06-05"),
(6, "Soham", "soham@gmail.com", "7689543256", "2025-06-06"),
(7, "Ritik", "ritik@gmail.com", "9753214534", "2025-06-07"),
(8, "Samiksha", "samiksha@gmail.com", "7654789865", "2025-06-08"),
(9, "Hanny", "hanny@gmail.com", "9234567821", "2025-06-09"),
(10, "Nitish", "nitish@gmail.com", "8765439876", "2025-06-10");


-- Inserted data into Subjects table
insert into academic_tracker.subjects values(1, "123", "English", "5"),
(2, "456", "Science", "4"),
(3, "789", "Maths", "5"),
(4, "323", "Marathi", "4"),
(5, "454", "History", "5");


-- Inserted data into Terms/Semester table
insert into academic_tracker.terms values(1, "First Term", "2020-01-01", "2020-03-31"),
(2, "Second Term", "2020-05-01", "2020-07-31"),
(3, "Third Term", "2020-09-01", "2020-11-30");


-- Inserted data into Grades table
insert into grades(grade_id, student_id, subject_id, term_id, grade)
values
  (1, 1, 1, 1, '4'),
  (2, 2, 2, 2, '5'),
  (3, 3, 3, 3, '6'),
  (4, 4, 1, 1, '2'),
  (5, 5, 2, 2, '8'),
  (6, 6, 4, 1, '9'),
  (7, 7, 5, 2, '7'),
  (8, 8, 1, 3, '6'),
  (9, 9, 2, 1, '10'),
  (10, 10, 5, 2, '2');


-- ##### BONUS TABLES DATA #####

-- Inserted data into Teachers table
insert into academic_tracker.teachers values (101, 'Dr. Ravi Sharma', 'ravi.sharma@college.edu'),
(102, 'Ms. Anita Das', 'anita.das@college.edu'),
(103, 'Ms. Rahul Sharma', 'rahul.sharma@college.edu');


-- Inserted data into Subject_Teacher relation table
insert into academic_tracker.subject_teacher values (1, 101),
(2, 102),
(3, 103),
(4, 101),
(5, 102);


-- Inserted data into Attendance table
insert into academic_tracker.attendance values
(10, 1, 1, 1, 18, 20),
(11, 1, 2, 1, 19, 20),
(12, 2, 1, 1, 16, 20),
(13, 2, 3, 2, 14, 20),
(14, 3, 4, 2, 20, 20),
(15, 4, 2, 3, 15, 20),
(16, 5, 3, 1, 14, 20),
(17, 6, 4, 2, 16, 20);