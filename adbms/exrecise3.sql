-- 01

CREATE DATABASE University;
USE University;

CREATE TABLE STUDENT (
	Name VARCHAR(50),
    Student_number INT PRIMARY KEY,
	Class INT,
    Major VARCHAR(50)
);

CREATE TABLE Course (
	Course_name VARCHAR(50),
    Course_number VARCHAR(50) PRIMARY KEY,
    Credit_hours INT,
    Department VARCHAR(50)
);


CREATE TABLE SECTION (
	Section_identifier INT PRIMARY KEY,
    Course_number VARCHAR(50),
    Semester VARCHAR(50),
    Year YEAR,
    Instructor VARCHAR(50),
    FOREIGN KEY (Course_number) REFERENCES COURSE(Course_number)
);

CREATE TABLE Grade_report (
	student_number INT,
    section_identifier INT,
    grade VARCHAR(10),
    PRIMARY KEY (student_number, section_identifier),
    FOREIGN KEY (student_number) REFERENCES Student(student_number),
    FOREIGN KEY (section_identifier) REFERENCES Section(section_identifier)
);

CREATE TABLE PREREQUISITE (
	Course_number VARCHAR(50),
    Prerequisite_number VARCHAR(50),
    PRIMARY KEY (Course_number, Prerequisite_number),
    FOREIGN KEY (Course_number) REFERENCES COURSE(Course_number),
    FOREIGN KEY (Prerequisite_number) REFERENCES COURSE(Course_number)
);

-- 02

-- Data for the table STUDENT
INSERT INTO STUDENT(Name,Student_number,Class,Major) VALUES ('Smith',17,1,'CS');
INSERT INTO STUDENT(Name,Student_number,Class,Major) VALUES ('Brown',8,2,'CS');

-- Data for the table COURSE
INSERT INTO COURSE VALUES ('Intro to Computer Science','CS1310',4,'CS');
INSERT INTO COURSE VALUES ('Data Structures','CS3320',4,'CS');
INSERT INTO COURSE VALUES ('Discrete Mathematics','MATH2410',3,'MATH');
INSERT INTO COURSE VALUES ('Database','CS3380',3,'CS');
  
-- Data for the table SECTION
INSERT INTO SECTION VALUES (85,'MATH2410','Fall',07,'King');
INSERT INTO SECTION VALUES (92,'CS1310','Fall',07,'Anderson');
INSERT INTO SECTION VALUES (102,'CS3320','Spring',08,'Knuth');
INSERT INTO SECTION VALUES (112,'MATH2410','Fall',08,'Chang');
INSERT INTO SECTION VALUES (119,'CS1310','Fall',08,'Anderson');
INSERT INTO SECTION VALUES (135,'CS3380','Fall',08,'Stone');

-- Data for the table GRADE_REPORT
INSERT INTO GRADE_REPORT VALUES (17,112,'B');
INSERT INTO GRADE_REPORT VALUES (17,119,'C');
INSERT INTO GRADE_REPORT VALUES (8,85,'A');
INSERT INTO GRADE_REPORT VALUES (8,92,'A');
INSERT INTO GRADE_REPORT VALUES (8,102,'B');
INSERT INTO GRADE_REPORT VALUES (8,135,'A');

-- Data for the table PREREQUISITE
INSERT INTO PREREQUISITE VALUES ('CS3380', 'CS3320');
INSERT INTO PREREQUISITE VALUES ('CS3380', 'MATH2410');
INSERT INTO PREREQUISITE VALUES ('CS3320', 'CS1310');

-- 03
SELECT STUDENT.Name,COURSE.Course_name,GRADE_REPORT.Grade FROM GRADE_REPORT
INNER JOIN STUDENT ON STUDENT.Student_number=GRADE_REPORT.Student_number
INNER JOIN SECTION ON SECTION.Section_identifier=GRADE_REPORT.Section_identifier
INNER JOIN COURSE ON Course.Course_number=SECTION.Course_number
WHERE STUDENT.Name="Smith";

-- 04
SELECT Name,Grade FROM STUDENT 
INNER JOIN GRADE_REPORT ON GRADE_REPORT.Student_number=STUDENT.Student_number
INNER JOIN SECTION ON SECTION.Section_identifier=GRADE_REPORT.Section_identifier
INNER JOIN COURSE ON COURSE.Course_number=SECTION.Course_number
WHERE COURSE.Course_name="Database" AND SECTION.Year=08;

-- 05
SELECT Course_name FROM Course
JOIN Prerequisite ON COURSE.Course_number=PREREQUISITE.Prerequisite_number
WHERE PREREQUISITE.Course_number = (
	SELECT Course_number FROM Course
    WHERE Course_name='Database'
);

-- 06
CREATE VIEW Seniors AS 
SELECT Name FROM Student 
WHERE Major='CS' AND Class="2";
SELECT * FROM Seniors;

-- 07
SELECT Course_name FROM Course
JOIN SECTION ON SECTION.Course_number=COURSE.Course_number
WHERE Instructor="King" AND YEAR BETWEEN 07 AND 08;

-- 07
SELECT course_name FROM Course
JOIN Section ON Section.course_number = Course.course_number
WHERE instructor="King" AND YEAR BETWEEN 07 AND 08;

-- 08
SELECT Section.course_number, Section.semester, Section.year, COUNT(Student.name) FROM Section
JOIN Course on Course.course_number = Section.course_number
JOIN Student ON Student.major = Course.department
WHERE Section.instructor="King"
GROUP BY Section.course_number, Section.semester, Section.year;

-- 09
SELECT Student.name, Course.course_name, Course.course_number, Course.credit_hours, Section.semester, Section.year, Grade_report.grade
FROM Student
JOIN Grade_report ON Grade_report.student_number = Student.student_number
JOIN Section ON Section.section_identifier = Grade_report.section_identifier
JOIN Course ON Course.course_number = Section.course_number
WHERE Student.class = "4" AND Student.major = "CS";

-- 10
INSERT INTO Student VALUES ("Johnson", 25, 1, "Math");
UPDATE Student SET class = 2 WHERE name = "Smith";
INSERT INTO Course VALUES ("Knowledge Engineering", "CS4390", 3, "CS");
DELETE FROM Student WHERE name = "Smith" AND student_number = 17;


-- Contents
SELECT * FROM Student;
SELECT * FROM Course;
SELECT * FROM Section;
SELECT * FROM Grade_report;
SELECT * FROM Prerequisite;


