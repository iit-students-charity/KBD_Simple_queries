USE University;

CREATE TABLE Subject
(
    CodeNumber VARCHAR(3) PRIMARY KEY,
    Name VARCHAR(30),
    Hours INT CHECK(Hours > 0),
	Semester CHAR
);

INSERT INTO Subject 
(CodeNumber, Name, Hours, Semester) 
VALUES
('12П', 'Мини ЭВМ', 36, '1'),
('14П', 'ПЭВМ', 72, '2'),
('17П', 'СУБД ПК', 48, '4'),
('18П', 'ВКСС', 52, '6'),
('34П', 'Физика', 30, '6'),
('22П', 'Аудит', 24, '3');