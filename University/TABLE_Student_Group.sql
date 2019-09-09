USE University;

CREATE TABLE Student_group
(
    CodeNumber VARCHAR(3) PRIMARY KEY,
    Name VARCHAR(4),
    CountOfMembers INT CHECK(CountOfMembers > 0),
	LeaderLastName VARCHAR(20)
);

INSERT INTO Student_group 
(CodeNumber, Name, CountOfMembers, LeaderLastName) 
VALUES
('8Г', 'Э-12', 18, 'Иванова'),
('7Г', 'Э-15', 22, 'Сеткин'),
('4Г', 'АС-9', 24, 'Балабанов'),
('3Г', 'АС-8', 20, 'Чижов'),
('17Г', 'С-14', 29, 'Амросов'),
('12Г', 'М-6', 16,  'Трубин'),
('10Г', 'Б-4 ', 21, 'Зязюткин');