USE University;

CREATE TABLE Specialty_student_group
(
    SpecialtyName VARCHAR(100) REFERENCES Specialty (Name) ON DELETE CASCADE,
	StudentGroupCodeNumber VARCHAR(3) REFERENCES Student_group (CodeNumber) ON DELETE CASCADE,
);

INSERT INTO Specialty_student_group 
(StudentGroupCodeNumber, SpecialtyName) 
VALUES
('8�', '���'), ('7�', '���'), ('4�', '����'),
('3�', '����'), ('17�', '��'),
('12�', '������������� ���������'), ('10�', '��������');