USE Manufactory;

CREATE TABLE J
(
    ProjectID VARCHAR(3) PRIMARY KEY,
    ProjectName VARCHAR(4),
	City VARCHAR(20)
);

INSERT INTO J
(ProjectID, ProjectName, City) 
VALUES
('��1', '���1', '�����'),
('��2', '���2', '�������'),
('��3', '���3', '�����'),
('��4', '���4', '�����'),
('��5', '���5', '������'),
('��6', '���6', '�������'),
('��7', '���7', '������');