USE [master]
GO

DROP DATABASE IF EXISTS [SEDCACADEMYDB]
GO

CREATE DATABASE [SEDCACADEMYDB]
GO

USE [SEDCACADEMYDB]
GO

CREATE TABLE Students (
StudentID int,
Firstname nvarchar(255) NOT NULL,
Lastname nvarchar(255) NOT NULL,
DateOfBirth date NULL,
EnrolledDate date NULL,
Gender nvarchar(1) NOT NULL,
NationalIDNumber int NULL,
StudentCardNumber int NULL,
CONSTRAINT [PK_Students] PRIMARY KEY (StudentID)
)

CREATE TABLE Teachers (
TeacherID int,
Firstname nvarchar(255) NOT NULL,
Lastname nvarchar(255) NOT NULL,
DateOfBirth date NULL,
AcademicRank nvarchar(10) NOT NULL,
HireDate date NULL,
CONSTRAINT [PK_Teachers] PRIMARY KEY (TeacherID)
)

CREATE TABLE Grade (
GradeID int,
StudentID int,
CourseID int NULL,
TeacherID int NULL,
Grade int NULL,
Comment nvarchar NULL,
CreatedDate date NULL,
CONSTRAINT [PK_Grade] PRIMARY KEY (GradeID)
)

CREATE TABLE Course (
CourseID int,
Name nvarchar(255) NOT NULL,
Credit decimal NOT NULL,
AcademicYear date NOT NULL,
Semester int NOT NULL
CONSTRAINT [PK_Course] PRIMARY KEY (CourseID)
)

CREATE TABLE GradeDetails (
GradeID int,
ArchievementTypeID int NULL,
ArchievementPoints int NULL,
ArchievementMaxPoints int NULL,
ArchievementData int NULL
CONSTRAINT [PK_GradeDetails] PRIMARY KEY (GradeID)
)

CREATE TABLE ArchievementType (
ID int PRIMARY KEY,
Name nvarchar(255) NOT NULL,
Description nvarchar(255) NULL,
ParticipationRate Decimal NOT NULL	
)










