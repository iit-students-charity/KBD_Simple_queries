USE University;
CREATE TABLE Teacher_student_group
(
    GroupCodeNumber VARCHAR(3),
    SubjectCodeNumber VARCHAR(3),
    TeacherPersonalNumber VARCHAR(4),
    AudienceNumber VARCHAR(3),
	PRIMARY KEY (GroupCodeNumber, SubjectCodeNumber, TeacherPersonalNumber, AudienceNumber)
);

INSERT INTO Teacher_student_group 
(GroupCodeNumber, SubjectCodeNumber, TeacherPersonalNumber, AudienceNumber) 
VALUES
('8�', '12�', '222�', '112'),
('8�', '14�', '221�', '220'),
('8�', '17�', '222�', '112'),
('7�', '14�', '221�', '220'),
('7�', '17�', '222�', '241'),
('7�', '18�', '225�', '210'),
('4�', '12�', '222�', '112'),
('4�', '18�', '225�', '210'),
('3�', '12�', '222�', '112'),
('3�', '17�', '221�', '241'),
('3�', '18�', '225�', '210'),
('17�', '12�', '222�', '112'),
('17�', '22�', '110�', '220'),
('17�', '34�', '430�', '118'),
('12�', '12�', '222�', '112'),
('12�', '22�', '110�', '210'),
('10�', '12�', '222�', '210'),
('10�', '22�', '110�', '210');