USE University;

CREATE TABLE Specialty_teacher
(
    SpecialtyName VARCHAR(100) REFERENCES Specialty (Name) ON DELETE CASCADE,
	TeacherPersonalNumber VARCHAR(4) REFERENCES Teacher (PersonalNumber) ON DELETE CASCADE,
);

INSERT INTO Specialty_teacher 
(TeacherPersonalNumber, SpecialtyName) 
VALUES
('221Л', 'АСОИ'), ('221Л', 'ЭВМ'),
('222Л', 'ЭВМ'), ('225Л', 'АСОИ'),
('225Л', 'ЭВМ'), ('430Л', 'СД'),
('110Л', 'Международная экономика');