-- 01 DDL COMMANDS

CREATE DATABASE UNIVERSITY;
USE UNIVERSITY;

CREATE TABLE STUDENT (
	name VARCHAR(50),
    student_number INT PRIMARY KEY,
    class INT,
    major VARCHAR(20)
);

CREATE TABLE COURSE (
	course_name VARCHAR(50),
    course_number VARCHAR(20) PRIMARY KEY,
    credit_hours INT,
    department VARCHAR(20)
);

CREATE TABLE SECTION (
	section_identifier INT PRIMARY KEY,
    course_number VARCHAR(20),
    semester VARCHAR(20),
    year YEAR,
    instructor VARCHAR(50),
    FOREIGN KEY (course_number) REFERENCES COURSE(course_number)
);

CREATE TABLE GRADE_REPORT (
	student_number INT,
    section_identifier INT,
    grade VARCHAR(5),
	PRIMARY KEY (student_number,section_identifier),
    FOREIGN KEY (student_number) REFERENCES STUDENT(student_number),
    FOREIGN KEY (section_identifier) REFERENCES SECTION(section_identifier)
);

CREATE TABLE PREREQUISITE (
	course_number VARCHAR(20),
    prerequisite_number VARCHAR(20),
    PRIMARY KEY (course_number, prerequisite_number),
    FOREIGN KEY (course_number) REFERENCES COURSE(course_number),
    FOREIGN KEY (prerequisite_number) REFERENCES COURSE(course_number)
);

-- 02

-- Data into table STUDENT
INSERT INTO STUDENT VALUES('Smith',17,1,'CS');
INSERT INTO STUDENT VALUES('Brown',8,2,'CS');

-- Data into table COURSE
INSERT INTO COURSE VALUES('Intro to Computer Science','CS1310',4,'CS');
INSERT INTO COURSE VALUES('Data Structures','CS3320',4,'CS');
INSERT INTO COURSE VALUES('Discrete Mathematics','MATH2410',3,'MATH');
INSERT INTO COURSE VALUES('Database','CS3380',3,'CS');

-- Data into table SECTION
INSERT INTO SECTION VALUES(85,'MATH2410','Fall',07,'King');
INSERT INTO SECTION VALUES(92,'CS1310','Fall',07,'Anderson');
INSERT INTO SECTION VALUES(102,'CS3320','Spring',08,'Knuth');
INSERT INTO SECTION VALUES(112,'MATH2410','Fall',08,'Chang');
INSERT INTO SECTION VALUES(119,'CS1310','Fall',08,'Anderson');
INSERT INTO SECTION VALUES(135,'CS3380','Fall',08,'Stone');

-- Data into table GRADE_REPORT
INSERT INTO GRADE_REPORT VALUES(17,112,'B');
INSERT INTO GRADE_REPORT VALUES(17,119,'C');
INSERT INTO GRADE_REPORT VALUES(8,85,'A');
INSERT INTO GRADE_REPORT VALUES(8,92,'A');
INSERT INTO GRADE_REPORT VALUES(8,102,'B');
INSERT INTO GRADE_REPORT VALUES(8,135,'A');

-- Data into table PREREQUISITE
INSERT INTO PREREQUISITE VALUES('CS3380','CS3320');
INSERT INTO PREREQUISITE VALUES('CS3380','MATH2410');
INSERT INTO PREREQUISITE VALUES('CS3320','CS1310');

-- 03
SELECT COURSE.course_name, GRADE_REPORT.grade FROM STUDENT
INNER JOIN GRADE_REPORT ON STUDENT.student_number=GRADE_REPORT.student_number
INNER JOIN SECTION ON GRADE_REPORT.section_identifier=SECTION.section_identifier
INNER JOIN COURSE ON SECTION.course_number=COURSE.course_number
WHERE STUDENT.name='Smith';

-- 04
SELECT STUDENT.name, GRADE_REPORT.grade FROM COURSE
INNER JOIN SECTION ON COURSE.course_number=SECTION.course_number
INNER JOIN GRADE_REPORT ON SECTION.section_identifier=GRADE_REPORT.section_identifier
INNER JOIN STUDENT ON GRADE_REPORT.student_number=STUDENT.student_number
WHERE COURSE.course_name="Database" AND SECTION.semester="Fall" AND SECTION.year=08;

-- 05
SELECT COURSE.course_name FROM PREREQUISITE
INNER JOIN COURSE ON PREREQUISITE.course_number=COURSE.course_number
WHERE course_name="Database";


SELECT course_name FROM COURSE
INNER JOIN PREREQUISITE ON COURSE.course_number = PREREQUISITE.course_number
WHERE PREREQUISITE.prerequisite_number = (
	SELECT course_number FROM COURSE
    WHERE course_name = "Database"
);

SELECT course_name FROM Course
JOIN Prerequisite ON Course.course_number = Prerequisite.prerequisite_number
WHERE Prerequisite.course_number = (
	SELECT course_number FROM Course 
	WHERE course_name = 'Database'
);

-- 06
CREATE VIEW seniors AS
SELECT name FROM STUDENT
WHERE major = "CS" AND class="2";
SELECT * FROM seniors;

-- 07
SELECT COURSE.course_name FROM COURSE
INNER JOIN SECTION ON COURSE.course_number = SECTION.course_number
WHERE instructor="King" AND year BETWEEN 07 AND 08;
						-- (year=07 OR 08)
                        
-- 08
SELECT COURSE.course_number, SECTION.semester, SECTION.year, COUNT(STUDENT.name) FROM COURSE
INNER JOIN SECTION ON COURSE.course_number = SECTION.course_number
INNER JOIN GRADE_REPORT ON SECTION.section_identifier = GRADE_REPORT.section_identifIer
INNER JOIN STUDENT ON GRADE_REPORT.student_number = STUDENT.student_number
WHERE SECTION.instructor="King"
GROUP BY SECTION.course_number, SECTION.semester, SECTION.year;

-- 09
SELECT STUDENT.name, COURSE.course_name, COURSE.course_number, COURSE.credit_hours, SECTION.semester, SECTION.year, GRADE_REPORT.grade FROM COURSE
INNER JOIN SECTION ON COURSE.course_number=SECTION.course_number 
INNER JOIN GRADE_REPORT ON SECTION.section_identifier=GRADE_REPORT.section_identifier
INNER JOIN STUDENT ON GRADE_REPORT.grade=STUDENT.student_number
WHERE STUDENT.class = 4 AND STUDENT.major = "CS";

-- 10
INSERT INTO STUDENT VALUES ('Johnson',25,1,'Math');    				  -- A 
UPDATE STUDENT SET class = 2 WHERE name = "Smith";	   				  -- B
INSERT INTO COURSE VALUES ('Knowledge Engineering','CS4390',3,'CS');  -- C 
DELETE FROM STUDENT WHERE name = "Smith" AND student_number = 17;


