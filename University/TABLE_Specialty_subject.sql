USE University;

CREATE TABLE Specialty_subject
(
    SpecialtyName VARCHAR(100) REFERENCES Specialty (Name) ON DELETE CASCADE,
	SubjectCodeNumber VARCHAR(3) REFERENCES Subject (CodeNumber) ON DELETE CASCADE,
);

INSERT INTO Specialty_subject 
(SubjectCodeNumber, SpecialtyName) 
VALUES
('12П', 'ЭВМ'),
('14П', 'ЭВМ'),
('17П', 'АСОИ'),
('18П', 'АСОИ'),
('34П', 'СД'),
('22П', 'Бухучета');