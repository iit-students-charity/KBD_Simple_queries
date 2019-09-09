USE University;

/* 1.1 */
SELECT * FROM Teacher;

/* 1.2 */
SELECT * FROM Student_group
	JOIN Specialty_student_group
	ON Student_group.CodeNumber = Specialty_student_group.StudentGroupCodeNumber
WHERE Specialty_student_group.SpecialtyName = '���';

/* 1.3 */
SELECT DISTINCT Teacher_student_group.TeacherPersonalNumber, Teacher_student_group.AudienceNumber FROM Teacher_student_group
WHERE Teacher_student_group.SubjectCodeNumber = '18�';

/* 1.4 */
SELECT DISTINCT Teacher_student_group.SubjectCodeNumber, Subject.Name FROM Teacher_student_group
	JOIN Subject
	ON Subject.CodeNumber = Teacher_student_group.SubjectCodeNumber 
		JOIN Teacher
		ON Teacher.LastName = '������';

/* 1.5 */
SELECT Teacher_student_group.GroupCodeNumber FROM Teacher_student_group
	JOIN Teacher
	ON Teacher.PersonalNumber = Teacher_student_group.TeacherPersonalNumber
WHERE Teacher.LastName = '������';

/* 1.6 */
SELECT DISTINCT * FROM Subject
	JOIN Specialty_subject
	ON Specialty_subject.SubjectCodeNumber = Subject.CodeNumber
WHERE Specialty_subject.SpecialtyName = '����';

/* 1.7 */
SELECT * FROM Teacher
	JOIN Specialty_teacher
	ON Specialty_teacher.TeacherPersonalNumber = Teacher.PersonalNumber
WHERE Specialty_teacher.SpecialtyName = '����';

/* 1.8 */
SELECT DISTINCT Teacher.LastName FROM Teacher
	JOIN Teacher_student_group
	ON Teacher.PersonalNumber = Teacher_student_group.TeacherPersonalNumber
WHERE Teacher_student_group.AudienceNumber = 210;

/* 1.9 */
SELECT Subject.Name AS 'Subject name', Student_group.Name AS 'Group name' FROM Subject, Student_group
	JOIN Teacher_student_group
	ON (Teacher_student_group.AudienceNumber >= 100 AND 
		Teacher_student_group.AudienceNumber <= 200)
WHERE (Teacher_student_group.GroupCodeNumber = Student_group.CodeNumber AND
	Teacher_student_group.SubjectCodeNumber = Subject.CodeNumber);

/* 1.10 Duplicates!!! */
SELECT DISTINCT sg1.CodeNumber AS First, sg2.CodeNumber AS Second FROM Student_group AS sg1
	INNER JOIN Student_group as sg2
	ON sg1.CodeNumber != sg2.CodeNumber
		INNER JOIN Specialty_student_group AS ssg1
		ON ssg1.StudentGroupCodeNumber = sg1.CodeNumber
			INNER JOIN Specialty_student_group AS ssg2
			ON ssg2.StudentGroupCodeNumber = sg2.CodeNumber
WHERE (ssg1.SpecialtyName != ssg2.SpecialtyName);

/* 1.11 */
SELECT SUM(Student_group.CountOfMembers) AS 'Count of members' FROM Student_group
	INNER JOIN Specialty_student_group
	ON Student_group.CodeNumber = Specialty_student_group.StudentGroupCodeNumber
WHERE Specialty_student_group.SpecialtyName = '���';