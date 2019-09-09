USE University;

CREATE TABLE Subject
(
    CodeNumber VARCHAR(3) PRIMARY KEY,
    Name VARCHAR(30),
    Hours INT CHECK(Hours > 0),
    Specialty VARCHAR(100),
	Semester CHAR
);

INSERT INTO Subject 
(CodeNumber, Name, Hours, Specialty, Semester) 
VALUES
('12П', 'Мини ЭВМ', 36, 'ЭВМ', '1'),
('14П', 'ПЭВМ', 72, 'ЭВМ', '2'),
('17П', 'СУБД ПК', 48, 'АСОИ', '4'),
('18П', 'ВКСС', 52, 'АСОИ', '6'),
('34П', 'Физика', 30, 'СД', '6'),
('22П', 'Аудит', 24, 'Бухучета', '3');