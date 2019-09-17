USE University;

/* 1.1 */
SELECT * FROM Teacher;

/* 1.2 */
SELECT * FROM Student_group
	INNER JOIN Specialty_student_group
	ON Student_group.CodeNumber = Specialty_student_group.StudentGroupCodeNumber
WHERE Specialty_student_group.SpecialtyName = 'ÝÂÌ';

/* 1.3 */
SELECT DISTINCT Teacher_student_group.TeacherPersonalNumber, Teacher_student_group.AudienceNumber FROM Teacher_student_group
WHERE Teacher_student_group.SubjectCodeNumber = '18Ï';

/* 1.4 */
SELECT DISTINCT Subject.CodeNumber, Subject.Name FROM Subject
	INNER JOIN Teacher_student_group
	ON Teacher_student_group.SubjectCodeNumber = Subject.CodeNumber 
		INNER JOIN Teacher
		ON Teacher.PersonalNumber = Teacher_student_group.TeacherPersonalNumber
WHERE Teacher.LastName = 'Êîñòèí';

/* 1.5 */
SELECT Teacher_student_group.GroupCodeNumber FROM Teacher_student_group
	JOIN Teacher
	ON Teacher.PersonalNumber = Teacher_student_group.TeacherPersonalNumber
WHERE Teacher.LastName = 'Ôðîëîâ';

/* 1.6 */
SELECT Subject.* FROM Subject
	JOIN Specialty_subject
	ON Specialty_subject.SubjectCodeNumber = Subject.CodeNumber
WHERE Specialty_subject.SpecialtyName = 'ÀÑÎÈ';

/* 1.7 */
SELECT Teacher.* FROM Teacher
	INNER JOIN Specialty_teacher
	ON Specialty_teacher.TeacherPersonalNumber = Teacher.PersonalNumber
WHERE Specialty_teacher.SpecialtyName = 'ÀÑÎÈ';

/* 1.8 */
SELECT DISTINCT Teacher.LastName FROM Teacher
	JOIN Teacher_student_group
	ON Teacher.PersonalNumber = Teacher_student_group.TeacherPersonalNumber
WHERE Teacher_student_group.AudienceNumber = 210;

/* 1.9 */
SELECT DISTINCT Subject.Name AS 'Subject name', Student_group.Name AS 'Group name' FROM Teacher_student_group
	INNER JOIN Subject
	ON (Teacher_student_group.SubjectCodeNumber = Subject.CodeNumber)
		INNER JOIN Student_group
		ON (Teacher_student_group.GroupCodeNumber = Student_group.CodeNumber)
WHERE Teacher_student_group.AudienceNumber BETWEEN 100 AND 200;

/* 1.10 */
SELECT sg1.CodeNumber AS First, sg2.CodeNumber AS Second FROM Student_group AS sg1
	INNER JOIN Student_group as sg2
	ON sg1.CodeNumber != sg2.CodeNumber
		INNER JOIN Specialty_student_group AS ssg1
		ON ssg1.StudentGroupCodeNumber = sg1.CodeNumber
			INNER JOIN Specialty_student_group AS ssg2
			ON ssg2.StudentGroupCodeNumber = sg2.CodeNumber
WHERE (ssg1.SpecialtyName = ssg2.SpecialtyName AND
	sg1.CodeNumber < sg2.CodeNumber);

/* 1.11 */
SELECT SUM(Student_group.CountOfMembers) AS 'Students count' FROM Student_group
	INNER JOIN Specialty_student_group
	ON Student_group.CodeNumber = Specialty_student_group.StudentGroupCodeNumber
WHERE Specialty_student_group.SpecialtyName = 'ÝÂÌ';

/* 1.12 */
SELECT Teacher.PersonalNumber FROM Teacher
	INNER JOIN Specialty_teacher
	ON Specialty_teacher.TeacherPersonalNumber = Teacher.PersonalNumber
WHERE Specialty_teacher.SpecialtyName = 'ÝÂÌ';

/* 1.13 */
SELECT Teacher_student_group.SubjectCodeNumber FROM Teacher_student_group
GROUP BY Teacher_student_group.SubjectCodeNumber
HAVING COUNT(Teacher_student_group.GroupCodeNumber) = (SELECT COUNT(*) FROM Subject);

/* 1.14 */
WITH Neccessary_subjects AS (SELECT DISTINCT Teacher_student_group.SubjectCodeNumber
            FROM Teacher_student_group, (SELECT Teacher_student_group.TeacherPersonalNumber
                               FROM Teacher_student_group
                               WHERE Teacher_student_group.SubjectCodeNumber = '14Ï') t
            WHERE Teacher_student_group.TeacherPersonalNumber = t.TeacherPersonalNumber)

SELECT DISTINCT Teacher.LastName
FROM Neccessary_subjects
  INNER JOIN Teacher_student_group 
  ON Teacher_student_group.SubjectCodeNumber = Neccessary_subjects.SubjectCodeNumber
	  INNER JOIN Teacher
	  ON Teacher_student_group.TeacherPersonalNumber = Teacher.PersonalNumber
WHERE Teacher_student_group.SubjectCodeNumber = Neccessary_subjects.SubjectCodeNumber;

/* 1.15 */
SELECT DISTINCT Subject.* FROM Subject
WHERE Subject.CodeNumber NOT IN (
		SELECT DISTINCT Teacher_student_group.SubjectCodeNumber FROM Teacher_student_group
		WHERE Teacher_student_group.TeacherPersonalNumber = '221Ë'
	);

/* 1.16 */
SELECT DISTINCT Subject.* FROM Subject
WHERE Subject.CodeNumber NOT IN(
	SELECT Teacher_student_group.SubjectCodeNumber FROM Teacher_student_group
		INNER JOIN Student_group
		ON Student_group.CodeNumber = Teacher_student_group.GroupCodeNumber
	WHERE Student_group.Name = 'Ì-6'
);

/* 1.17 */
SELECT DISTINCT Teacher.* FROM Teacher
	INNER JOIN Teacher_student_group
	ON Teacher_student_group.TeacherPersonalNumber = Teacher.PersonalNumber
WHERE (Teacher.Position = 'Äîöåíò' AND
	Teacher_student_group.GroupCodeNumber IN ('8Ã', '3Ã'));

/* 1.18 */
SELECT DISTINCT tsg.SubjectCodeNumber, tsg.TeacherPersonalNumber, tsg.GroupCodeNumber FROM Teacher_student_group AS tsg
	INNER JOIN Teacher
	ON Teacher.PersonalNumber = tsg.TeacherPersonalNumber
		INNER JOIN Specialty_teacher
		ON Specialty_teacher.TeacherPersonalNumber = Teacher.PersonalNumber
WHERE (Teacher.Department = 'ÝÂÌ' AND Specialty_teacher.SpecialtyName = 'ÀÑÎÈ');

/* 1.19 */
SELECT DISTINCT Specialty_student_group.StudentGroupCodeNumber FROM Specialty_student_group
	INNER JOIN Specialty_teacher
	ON Specialty_teacher.SpecialtyName = Specialty_student_group.SpecialtyName;

/* 1.20 */
SELECT DISTINCT Teacher.PersonalNumber FROM Teacher
	INNER JOIN Specialty_teacher
	ON Specialty_teacher.TeacherPersonalNumber = Teacher.PersonalNumber
		INNER JOIN Specialty_student_group
		ON Specialty_teacher.SpecialtyName = Specialty_student_group.SpecialtyName
	WHERE Teacher.Department = 'ÝÂÌ';

/* 1.21 */
SELECT DISTINCT Specialty_student_group.SpecialtyName FROM Specialty_student_group
	INNER JOIN Specialty_teacher
	ON Specialty_student_group.SpecialtyName = Specialty_teacher.SpecialtyName
		INNER JOIN Teacher
		ON Specialty_teacher.TeacherPersonalNumber = Teacher.PersonalNumber
	WHERE Teacher.Department = 'ÀÑÓ';

/* 1.22 */
SELECT Teacher_student_group.SubjectCodeNumber FROM Teacher_student_group
	INNER JOIN Student_group
	ON Student_group.CodeNumber = Teacher_student_group.GroupCodeNumber
WHERE Student_group.Name = 'ÀÑ-8';

/* 1.23 */
SELECT DISTINCT Teacher_student_group.GroupCodeNumber FROM Teacher_student_group
WHERE Teacher_student_group.GroupCodeNumber IN (
		SELECT Teacher_student_group.GroupCodeNumber FROM Teacher_student_group
			INNER JOIN Student_group
			ON Student_group.CodeNumber = Teacher_student_group.GroupCodeNumber
		WHERE Student_group.Name = 'ÀÑ-8'
	);

/* 1.24 */
SELECT DISTINCT Teacher_student_group.GroupCodeNumber FROM Teacher_student_group
WHERE Teacher_student_group.GroupCodeNumber NOT IN(
	SELECT Teacher_student_group.GroupCodeNumber FROM Teacher_student_group
		INNER JOIN Student_group
		ON Student_group.CodeNumber = Teacher_student_group.GroupCodeNumber
	WHERE Student_group.Name = 'ÀÑ-8'
);

/* 1.25 */
SELECT DISTINCT Teacher_student_group.GroupCodeNumber FROM Teacher_student_group
WHERE Teacher_student_group.GroupCodeNumber NOT IN(
	SELECT Teacher_student_group.GroupCodeNumber FROM Teacher_student_group
	WHERE Teacher_student_group.TeacherPersonalNumber = '430Ë'
);

/* 1.26 */
SELECT DISTINCT Teacher_student_group.TeacherPersonalNumber FROM Teacher_student_group
WHERE Teacher_student_group.SubjectCodeNumber != '12Ï' AND
	Teacher_student_group.GroupCodeNumber = (
		SELECT Student_group.CodeNumber FROM Student_group
		WHERE Student_group.Name = 'Ý-15'
	);