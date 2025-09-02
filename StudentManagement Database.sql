create database StudentManagement;
use StudentManagement;

CREATE TABLE Students (
    StudentID INTEGER PRIMARY KEY AUTO_INCREMENT,
    Name TEXT,
    Gender TEXT,
    Age INTEGER,
    Grade TEXT,
    MathScore INTEGER,
    ScienceScore INTEGER,
    EnglishScore INTEGER
);

INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES
('Arjun', 'M', 16, 'A', 85, 78, 90),
('Sara', 'F', 17, 'B', 92, 81, 77),
('Ajay', 'M', 15, 'A', 75, 66, 80),
('Priya', 'F', 16, 'C', 60, 71, 65),
('Rohit', 'M', 17, 'B', 88, 90, 83),
('Neha', 'F', 15, 'B', 79, 85, 80),
('Karan', 'M', 16, 'C', 55, 60, 70),
('Anita', 'F', 17, 'A', 95, 92, 88),
('Sanju', 'M', 15, 'B', 82, 76, 75),
('Lina', 'F', 16, 'C', 70, 65, 72);


SELECT * FROM Students;

select AVG(MathScore) AS AvgMath, 
  AVG(ScienceScore) AS AvgScience, 
  AVG(EnglishScore) AS AvgEnglish 
FROM Students;

SELECT 
  Name, 
  (MathScore + ScienceScore + EnglishScore) AS TotalScore 
FROM Students 
ORDER BY TotalScore DESC 
LIMIT 1;

SELECT Grade, COUNT(*) AS StudentCount 
FROM Students 
GROUP BY Grade;

SELECT 
  Gender, 
  AVG(MathScore) AS AvgMath, 
  AVG(ScienceScore) AS AvgScience, 
  AVG(EnglishScore) AS AvgEnglish 
FROM Students 
GROUP BY Gender;

SELECT * FROM Students 
WHERE MathScore > 80;

UPDATE Students 
SET Grade = 'B' 
WHERE StudentID = 3;

SELECT * FROM Students WHERE StudentID = 3;








