USE University;

CREATE TABLE Specialty_subject
(
    SpecialtyName VARCHAR(100) REFERENCES Specialty (Name) ON DELETE CASCADE,
	SubjectCodeNumber VARCHAR(3) REFERENCES Subject (CodeNumber) ON DELETE CASCADE,
);

INSERT INTO Specialty_subject 
(SubjectCodeNumber, SpecialtyName) 
VALUES
('12�', '���'),
('14�', '���'),
('17�', '����'),
('18�', '����'),
('34�', '��'),
('22�', '��������');