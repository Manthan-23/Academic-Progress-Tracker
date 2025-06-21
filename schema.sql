-- created the academic_tracker database
create database academic_tracker;


-- started using the academic_tracker database
use academic_tracker;


-- Students table created - Stores student personal details
create table students(student_id int auto_increment primary key,
stud_name varchar(100) not null,
email varchar(100) not null unique,
contact_number varchar(15),
enrollment_date date not null 
);


-- Subjects table created - Contains subject/course information
create table subjects(subject_id int primary key,
subject_code varchar(25) unique,
subject_name varchar(100),
credits int 
);


-- Terms/Semester table created - Represents academic terms or semesters
create table terms(term_id int primary key,
term_name varchar(100),
start_date date,
end_date date 
);


-- Grades table created - Records grades per student per subject per term
create table grades(grade_id int primary key,
student_id int,
subject_id int,
term_id int,
grade varchar(25),
foreign key(student_id) references academic_tracker.students(student_id),
foreign key(subject_id) references academic_tracker.subjects(subject_id),
foreign key(term_id) references academic_tracker.terms(term_id) 
);


-- ############ BONUS TABLES #############

-- Teachers table created - Stores teacher details
create table teachers(teacher_id int primary key, teacher_name varchar(100), teacher_email varchar(100) unique);


-- Subject_Teacher table created - Maps subjects to teachers
create table subject_teacher(subject_id int, teacher_id int,
foreign key(subject_id) references academic_tracker.subjects(subject_id),
foreign key(teacher_id) references academic_tracker.teachers(teacher_id));


-- Attendance table created - Tracks student attendance per subject per term
create table attendance(attendance_id int primary key, student_id int,
subject_id int, term_id int, attended_classes int, total_classes int,
foreign key(student_id) references academic_tracker.students(student_id),
foreign key(subject_id) references academic_tracker.subjects(subject_id),
foreign key(term_id) references academic_tracker.terms(term_id));
