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
('�1', '����', '�������', 12, '������'),
('�2', '�����', '�������', 17, '�����'),
('�3', '����', '������', 17, '�������'),
('�4', '����', '������', 14, '������'),
('�5', '������', '�������', 12, '�����'),
('�6', '������', '�������', 19, '������');