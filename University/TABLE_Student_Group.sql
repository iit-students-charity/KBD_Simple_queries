USE University;

CREATE TABLE Student_group
(
    CodeNumber VARCHAR(3) PRIMARY KEY,
    Name VARCHAR(4),
    CountOfMembers INT CHECK(CountOfMembers > 0),
    Specialty VARCHAR(100),
	LeaderLastName VARCHAR(20)
);

INSERT INTO Student_group 
(CodeNumber, Name, CountOfMembers, Specialty, LeaderLastName) 
VALUES
('8Г', 'Э-12', 18, 'ЭВМ', 'Иванова'),
('7Г', 'Э-15', 22, 'ЭВМ', 'Сеткин'),
('4Г', 'АС-9', 24, 'АСОИ', 'Балабанов'),
('3Г', 'АС-8', 20, 'АСОИ', 'Чижов'),
('17Г', 'С-14', 29, 'СД', 'Амросов'),
('12Г', 'М-6', 16, 'Международная экономика', 'Трубин'),
('10Г', 'Б-4 ', 21, 'Бухучета', 'Зязюткин');