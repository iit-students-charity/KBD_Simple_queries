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
('8Ã', '12Ï', '222Ë', '112'),
('8Ã', '14Ï', '221Ë', '220'),
('8Ã', '17Ï', '222Ë', '112'),
('7Ã', '14Ï', '221Ë', '220'),
('7Ã', '17Ï', '222Ë', '241'),
('7Ã', '18Ï', '225Ë', '210'),
('4Ã', '12Ï', '222Ë', '112'),
('4Ã', '18Ï', '225Ë', '210'),
('3Ã', '12Ï', '222Ë', '112'),
('3Ã', '17Ï', '221Ë', '241'),
('3Ã', '18Ï', '225Ë', '210'),
('17Ã', '12Ï', '222Ë', '112'),
('17Ã', '22Ï', '110Ë', '220'),
('17Ã', '34Ï', '430Ë', '118'),
('12Ã', '12Ï', '222Ë', '112'),
('12Ã', '22Ï', '110Ë', '210'),
('10Ã', '12Ï', '222Ë', '210'),
('10Ã', '22Ï', '110Ë', '210');