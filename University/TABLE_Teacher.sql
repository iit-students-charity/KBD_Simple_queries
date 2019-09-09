USE University;
CREATE TABLE Teacher
(
    PersonalNumber VARCHAR(3) PRIMARY KEY,
    LastName VARCHAR(20),
    Position VARCHAR(20),
    Department VARCHAR(50),
    Specialty VARCHAR(1000),
	HomePhone VARCHAR(3)
);

INSERT INTO Teacher 
(PersonalNumber, LastName, Position, Department, Specialty, HomePhone) 
VALUES
('221Л', 'Фролов', 'Доцент', 'ЭВМ', 'АСОИ, ЭВМ', '487'),
('222Л', 'Костин', 'Доцент', 'ЭВМ', 'ЭВМ', '543'),
('225Л', 'Бойко', 'Профессор', 'АСУ', 'АСОИ, ЭВМ', '112'),
('430Л', 'Глазов', 'Ассистент', 'ТФ', 'СД', '421'),
('110Л', 'Петров', 'Ассистент', 'Экономики', 'Международная экономика', '324');