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
('�1', '������', 20, '������'),
('�2', '�������', 10, '�������'),
('�3', '�������', 30, '�������'),
('�4', '������', 20, '�����'),
('�5', '������', 30, '����');