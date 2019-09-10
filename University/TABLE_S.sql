USE Manufactory;

CREATE TABLE S
(
    ProviderID VARCHAR(2) PRIMARY KEY,
    ProviderName VARCHAR(30),
    Status INT,
	City VARCHAR(20)
);

INSERT INTO S 
(ProviderID, ProviderName, Status, City) 
VALUES
('П1', 'Петров', 20, 'Москва'),
('П2', 'Синицин', 10, 'Таллинн'),
('П3', 'Федоров', 30, 'Таллинн'),
('П4', 'Чаянов', 20, 'Минск'),
('П5', 'Крюков', 30, 'Киев');