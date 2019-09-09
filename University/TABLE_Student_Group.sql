USE University;

CREATE TABLE Student_group
(
    CodeNumber VARCHAR(3) PRIMARY KEY,
    Name VARCHAR(4),
    CountOfMembers INT CHECK(CountOfMembers > 0),
    Specialty VARCHAR(100),
	LeaderLastName VARCHAR(20)
);

INSERT INTO Student_group 
(CodeNumber, Name, CountOfMembers, Specialty, LeaderLastName) 
VALUES
('8�', '�-12', 18, '���', '�������'),
('7�', '�-15', 22, '���', '������'),
('4�', '��-9', 24, '����', '���������'),
('3�', '��-8', 20, '����', '�����'),
('17�', '�-14', 29, '��', '�������'),
('12�', '�-6', 16, '������������� ���������', '������'),
('10�', '�-4 ', 21, '��������', '��������');