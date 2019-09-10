USE Manufactory;

CREATE TABLE P
(
    ItemID VARCHAR(2) PRIMARY KEY,
    ItemName VARCHAR(40),
    Color VARCHAR(20),
	Size INT,
	City VARCHAR(20)
);

INSERT INTO P
(ItemID, ItemName, Color, Size, City) 
VALUES
('Д1', 'Болт', 'Красный', 12, 'Москва'),
('Д2', 'Гайка', 'Зеленая', 17, 'Минск'),
('Д3', 'Диск', 'Черный', 17, 'Вильнюс'),
('Д4', 'Диск', 'Черный', 14, 'Москва'),
('Д5', 'Корпус', 'Красный', 12, 'Минск'),
('Д6', 'Крышки', 'Красный', 19, 'Москва');