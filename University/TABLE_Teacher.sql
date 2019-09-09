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
('221�', '������', '������', '���', '����, ���', '487'),
('222�', '������', '������', '���', '���', '543'),
('225�', '�����', '���������', '���', '����, ���', '112'),
('430�', '������', '���������', '��', '��', '421'),
('110�', '������', '���������', '���������', '������������� ���������', '324');