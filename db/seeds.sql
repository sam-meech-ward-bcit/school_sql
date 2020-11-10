insert into student (id, first_name, last_name) values (1, 'Deane', 'Scarman');
insert into student (id, first_name, last_name) values (2, 'Franny', 'Frake');
insert into student (id, first_name, last_name) values (3, 'Rhodie', 'Scripps');
insert into student (id, first_name, last_name) values (4, 'Bridget', 'Scarman');
insert into student (id, first_name, last_name) values (5, 'Deane', 'Flather');
insert into student (id, first_name, last_name) values (6, 'Maud', 'Varney');
insert into student (id, first_name, last_name) values (7, 'Malvina', 'Funcheon');
insert into student (id, first_name, last_name) values (8, 'John', 'Froude');
insert into student (id, first_name, last_name) values (9, 'Jenn', 'Coleford');
insert into student (id, first_name, last_name) values (10, 'Beth', 'Gylle');

insert into instructor (id, first_name, last_name) values (1, 'Malvina', 'Funcheon');
insert into instructor (id, first_name, last_name) values (2, 'John', 'Froude');
insert into instructor (id, first_name, last_name) values (3, 'Jenn', 'Coleford');
insert into instructor (id, first_name, last_name) values (4, 'Beth', 'Gylle');
insert into instructor (id, first_name, last_name) values (5, 'Glenine', 'Lownds');
insert into instructor (id, first_name, last_name) values (6, 'Germaine', 'Zanioletti');
insert into instructor (id, first_name, last_name) values (7, 'Alexandra', 'Storey');
insert into instructor (id, first_name, last_name) values (8, 'Aubrie', 'Lownds');
insert into instructor (id, first_name, last_name) values (9, 'Beth', 'Mussotti');
insert into instructor (id, first_name, last_name) values (10, 'Jenn', 'Gylle');

INSERT INTO course (id, title)
VALUES 
(1, 'Business Communications 1'),
(2, 'CST Program Fundamentals'),
(3, 'Applied Mathematics'),
(4, 'Programming Methods'),
(5, 'Web Development 1'),
(6, 'Business Analysis and System Design'),
(7, 'Projects 1'),
(8, 'Web Development 2*'),
(9, 'Projects 2*'),
(10, 'Business Communications 2'),
(11, 'Discrete Mathematics'),
(12, 'Procedural Programming'),
(13, 'Object Oriented Programming 1'),
(14, 'Relational Database Systems'),
(15, 'Computer Organization/Architecture'),
(16, 'Web Development 2*'),
(17, 'Projects 2*'),
(18, 'Object Oriented Programming 2'),
(19, 'Mobile Development with Android Technologies*'),
(20, 'Introduction to Data Communications'),
(21, 'Algorithm Analysis and Design'),
(22, 'Applied Probability and Statistics '),
(23, 'Projects Practicum 1**'),
(24, 'Introduction to Artificial Intelligence'),
(25, 'Client/Server Systems Development Fundamentals'),
(26, 'Cloud Computing Platforms'),
(27, 'Server-Side Web Scripting'),
(28, 'Database Systems 1'),
(29, 'Network Protocol Design and Implementation'),
(30, 'Programming for Performance');

insert into class (id, course_id, instructor_id, start_date, end_date) values (44, 20, 4, '2021-01-25', '2020-07-01');
insert into class (id, course_id, instructor_id, start_date, end_date) values (43, 30, NULL, '2020-11-01', '2021-03-17');
insert into class (id, course_id, instructor_id, start_date, end_date) values (42, 20, NULL, '2019-12-17', '2021-05-24');
insert into class (id, course_id, instructor_id, start_date, end_date) values (41, 22, NULL, '2020-10-20', '2021-03-18');
insert into class (id, course_id, instructor_id, start_date, end_date) values (40, 2, 4, '2021-08-08', '2020-11-18');
insert into class (id, course_id, instructor_id, start_date, end_date) values (39, 28, 1, '2021-09-23', '2021-01-25');
insert into class (id, course_id, instructor_id, start_date, end_date) values (38, 22, 6, '2021-02-24', '2020-08-31');
insert into class (id, course_id, instructor_id, start_date, end_date) values (37, 25, 4, '2021-07-06', '2019-12-05');
insert into class (id, course_id, instructor_id, start_date, end_date) values (36, 5, 2, '2019-11-03', '2021-02-28');
insert into class (id, course_id, instructor_id, start_date, end_date) values (35, 11, 1, '2021-09-14', '2020-04-06');
insert into class (id, course_id, instructor_id, start_date, end_date) values (34, 4, 7, '2020-12-26', '2020-06-22');
insert into class (id, course_id, instructor_id, start_date, end_date) values (33, 15, 10, '2020-07-20', '2021-06-21');
insert into class (id, course_id, instructor_id, start_date, end_date) values (32, 16, 7, '2020-10-14', '2021-08-16');
insert into class (id, course_id, instructor_id, start_date, end_date) values (31, 3, 1, '2020-04-08', '2020-04-18');
insert into class (id, course_id, instructor_id, start_date, end_date) values (30, 21, 6, '2021-08-06', '2021-08-11');
insert into class (id, course_id, instructor_id, start_date, end_date) values (29, 19, 6, '2020-04-15', '2020-03-10');
insert into class (id, course_id, instructor_id, start_date, end_date) values (28, 30, 1, '2021-07-17', '2020-11-20');
insert into class (id, course_id, instructor_id, start_date, end_date) values (27, 6, 2, '2020-11-30', '2020-05-20');
insert into class (id, course_id, instructor_id, start_date, end_date) values (26, 9, NULL, '2021-05-02', '2020-08-03');
insert into class (id, course_id, instructor_id, start_date, end_date) values (25, 22, 1, '2020-01-19', '2021-01-06');
insert into class (id, course_id, instructor_id, start_date, end_date) values (24, 29, 1, '2021-04-25', '2020-04-21');
insert into class (id, course_id, instructor_id, start_date, end_date) values (23, 3, 2, '2020-04-14', '2021-06-22');
insert into class (id, course_id, instructor_id, start_date, end_date) values (22, 6, 1, '2021-03-18', '2020-07-11');
insert into class (id, course_id, instructor_id, start_date, end_date) values (21, 21, 6, '2020-05-31', '2020-10-18');
insert into class (id, course_id, instructor_id, start_date, end_date) values (20, 28, 5, '2020-08-26', '2020-07-20');
insert into class (id, course_id, instructor_id, start_date, end_date) values (19, 30, NULL, '2021-09-06', '2020-12-31');
insert into class (id, course_id, instructor_id, start_date, end_date) values (18, 16, 6, '2020-06-18', '2020-02-26');
insert into class (id, course_id, instructor_id, start_date, end_date) values (17, 28, 8, '2019-11-09', '2019-11-07');
insert into class (id, course_id, instructor_id, start_date, end_date) values (15, 15, 1, '2021-03-24', '2020-01-17');
insert into class (id, course_id, instructor_id, start_date, end_date) values (14, 12, NULL, '2020-06-28', '2020-07-18');
insert into class (id, course_id, instructor_id, start_date, end_date) values (13, 9, NULL, '2020-11-12', '2019-12-24');
insert into class (id, course_id, instructor_id, start_date, end_date) values (12, 30, NULL, '2021-05-23', '2021-01-17');
insert into class (id, course_id, instructor_id, start_date, end_date) values (11, 29, 4, '2021-09-15', '2021-01-13');
insert into class (id, course_id, instructor_id, start_date, end_date) values (10, 15, 2, '2020-04-11', '2020-03-23');
insert into class (id, course_id, instructor_id, start_date, end_date) values (9, 14, 2, '2020-09-11', '2020-02-16');
insert into class (id, course_id, instructor_id, start_date, end_date) values (8, 9, 10, '2020-08-23', '2020-01-27');
insert into class (id, course_id, instructor_id, start_date, end_date) values (7, 8, 6, '2019-12-03', '2021-03-06');
insert into class (id, course_id, instructor_id, start_date, end_date) values (6, 20, 5, '2020-09-14', '2020-04-27');
insert into class (id, course_id, instructor_id, start_date, end_date) values (5, 22, 1, '2020-01-21', '2021-07-20');
insert into class (id, course_id, instructor_id, start_date, end_date) values (4, 1, 4, '2020-02-02', '2020-08-01');
insert into class (id, course_id, instructor_id, start_date, end_date) values (3, 8, 1, '2020-06-30', '2019-12-08');
insert into class (id, course_id, instructor_id, start_date, end_date) values (2, 9, 5, '2020-02-02', '2020-02-04');
insert into class (id, course_id, instructor_id, start_date, end_date) values (1, 9, 10, '2021-01-01', '2020-12-01');


insert into enrollment (id, student_id, class_id, `timestamp`) values (1, 2, 39, '2020-03-08 05:59:58');
insert into enrollment (id, student_id, class_id, `timestamp`) values (5, 9, 37, '2020-01-24 07:20:52');
insert into enrollment (id, student_id, class_id, `timestamp`) values (6, 10, 13, '2020-05-04 01:01:44');
insert into enrollment (id, student_id, class_id, `timestamp`) values (7, 3, 34, '2020-01-25 10:10:38');
insert into enrollment (id, student_id, class_id, `timestamp`) values (10, 7, 4, '2019-12-09 00:19:43');
insert into enrollment (id, student_id, class_id, `timestamp`) values (11, 6, 3, '2019-11-07 13:44:45');
insert into enrollment (id, student_id, class_id, `timestamp`) values (12, 7, 30, '2020-04-05 02:35:54');
insert into enrollment (id, student_id, class_id, `timestamp`) values (15, 6, 14, '2020-03-15 22:37:47');
insert into enrollment (id, student_id, class_id, `timestamp`) values (18, 3, 36, '2019-12-23 00:37:37');
insert into enrollment (id, student_id, class_id, `timestamp`) values (19, 10, 42, '2020-03-20 14:31:26');
insert into enrollment (id, student_id, class_id, `timestamp`) values (21, 4, 35, '2020-01-08 00:44:43');
insert into enrollment (id, student_id, class_id, `timestamp`) values (27, 4, 28, '2020-02-15 13:22:21');
insert into enrollment (id, student_id, class_id, `timestamp`) values (30, 4, 4, '2019-11-09 04:42:06');
insert into enrollment (id, student_id, class_id, `timestamp`) values (31, 7, 30, '2019-11-24 09:15:15');
insert into enrollment (id, student_id, class_id, `timestamp`) values (32, 1, 23, '2020-05-18 05:14:41');
insert into enrollment (id, student_id, class_id, `timestamp`) values (33, 1, 5, '2019-12-16 10:16:53');
insert into enrollment (id, student_id, class_id, `timestamp`) values (35, 6, 2, '2020-04-04 14:01:08');
insert into enrollment (id, student_id, class_id, `timestamp`) values (36, 10, 39, '2019-11-21 05:59:15');
insert into enrollment (id, student_id, class_id, `timestamp`) values (37, 7, 11, '2020-04-18 14:06:32');
insert into enrollment (id, student_id, class_id, `timestamp`) values (39, 2, 5, '2020-03-09 14:58:31');
insert into enrollment (id, student_id, class_id, `timestamp`) values (41, 9, 38, '2020-03-27 01:03:04');
insert into enrollment (id, student_id, class_id, `timestamp`) values (42, 4, 3, '2019-12-24 23:04:56');
insert into enrollment (id, student_id, class_id, `timestamp`) values (44, 2, 37, '2020-01-19 11:32:35');
insert into enrollment (id, student_id, class_id, `timestamp`) values (46, 4, 37, '2019-11-12 06:00:25');
insert into enrollment (id, student_id, class_id, `timestamp`) values (50, 7, 17, '2019-12-13 19:27:54');
