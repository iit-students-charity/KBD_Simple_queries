USE University;

CREATE TABLE Teacher
(
    PersonalNumber VARCHAR(4) PRIMARY KEY,
    LastName VARCHAR(20),
    Position VARCHAR(20),
    Department VARCHAR(50),
	HomePhone VARCHAR(3)
);

INSERT INTO Teacher 
(PersonalNumber, LastName, Position, Department, HomePhone) 
VALUES
('221Л', 'Фролов', 'Доцент', 'ЭВМ', '487'),
('222Л', 'Костин', 'Доцент', 'ЭВМ', '543'),
('225Л', 'Бойко', 'Профессор', 'АСУ', '112'),
('430Л', 'Глазов', 'Ассистент', 'ТФ', '421'),
('110Л', 'Петров', 'Ассистент', 'Экономики', '324');