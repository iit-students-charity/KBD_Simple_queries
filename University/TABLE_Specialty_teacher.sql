USE University;

CREATE TABLE Specialty_teacher
(
    SpecialtyName VARCHAR(100) REFERENCES Specialty (Name) ON DELETE CASCADE,
	TeacherPersonalNumber VARCHAR(4) REFERENCES Teacher (PersonalNumber) ON DELETE CASCADE,
);

INSERT INTO Specialty_teacher 
(TeacherPersonalNumber, SpecialtyName) 
VALUES
('221�', '����'), ('221�', '���'),
('222�', '���'), ('225�', '����'),
('225�', '���'), ('430�', '��'),
('110�', '������������� ���������');