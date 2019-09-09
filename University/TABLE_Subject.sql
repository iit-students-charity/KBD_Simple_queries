USE University;

CREATE TABLE Subject
(
    CodeNumber VARCHAR(3) PRIMARY KEY,
    Name VARCHAR(30),
    Hours INT CHECK(Hours > 0),
    Specialty VARCHAR(100),
	Semester CHAR
);

INSERT INTO Subject 
(CodeNumber, Name, Hours, Specialty, Semester) 
VALUES
('12�', '���� ���', 36, '���', '1'),
('14�', '����', 72, '���', '2'),
('17�', '���� ��', 48, '����', '4'),
('18�', '����', 52, '����', '6'),
('34�', '������', 30, '��', '6'),
('22�', '�����', 24, '��������', '3');